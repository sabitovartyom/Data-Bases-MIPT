import pytest
import sqlite3
from sqlalchemy import create_engine, Column, Integer, String, Float, Date, Boolean, ForeignKey, CheckConstraint
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy.sql import text, func
from datetime import date
import decimal

with open('DDL.sql', 'r', encoding='utf-8') as f:
    SCHEMA_SQL = f.read()

with open('inserts.sql', 'r', encoding='utf-8') as f:
    INSERT_SQL = f.read()

REQUEST = []
for i in range(1, 11):
    with open('requests/request' + str(i) + '.sql', 'r', encoding='utf-8') as f:
        REQUEST.append(f.read())

# Фикстура для in-memory SQLite базы данных
@pytest.fixture
def db_connection():
    conn = sqlite3.connect(':memory:')  # Создаёт новое подключение к in-memory SQLite базе данных, которая существует только во время выполнения теста
    conn.executescript(SCHEMA_SQL)
    conn.executescript(INSERT_SQL)
    yield conn  # Передаёт объект подключения тестам для выполнения запросов
    conn.close()  # Закрывает подключение к базе после завершения теста, освобождая ресурсы

# Настройка SQLAlchemy Base и сессии
Base = declarative_base()

class Customer(Base):
    __tablename__ = 'Customers'
    customer_id = Column(Integer, primary_key=True)
    first_name = Column(String(50), nullable=False)
    last_name = Column(String(50), nullable=False)
    phone_number = Column(String(15))
    sex = Column(String(1))
    date_of_birth = Column(Date)

class Account(Base):
    __tablename__ = 'Accounts'
    account_id = Column(Integer, primary_key=True)
    customer_id = Column(Integer, ForeignKey('Customers.customer_id'), nullable=False)
    account_type = Column(String(50), nullable=False)
    balance = Column(Float, nullable=False)
    currency = Column(String(3), nullable=False)

class LoanProduct(Base):
    __tablename__ = 'LoanProducts'
    product_id = Column(Integer, primary_key=True)
    product_name = Column(String(100), nullable=False)
    interest_rate = Column(Float, nullable=False)
    max_loan_amount = Column(Float, nullable=False)
    is_active = Column(Boolean, nullable=False)
    valid_from = Column(Date, nullable=False)
    valid_to = Column(Date)

class Loan(Base):
    __tablename__ = 'Loans'
    loan_id = Column(Integer, primary_key=True)
    customer_id = Column(Integer, ForeignKey('Customers.customer_id'), nullable=False)
    account_id = Column(Integer, ForeignKey('Accounts.account_id'), nullable=False)
    product_id = Column(Integer, ForeignKey('LoanProducts.product_id'), nullable=False)
    loan_amount = Column(Float, nullable=False)
    start_date = Column(Date, nullable=False)

class Transaction(Base):
    __tablename__ = 'Transactions'
    transaction_id = Column(Integer, primary_key=True)
    sender_id = Column(Integer, ForeignKey('Accounts.account_id'), nullable=False)
    type_of_target = Column(String(50), nullable=False)
    target_account_id = Column(Integer, ForeignKey('Accounts.account_id'))
    target_loan_id = Column(Integer, ForeignKey('Loans.loan_id'))
    transaction_date = Column(Date, nullable=False)
    amount = Column(Float, nullable=False)

@pytest.fixture
def orm_session():
    engine = create_engine('sqlite:///:memory:', echo=False)  # Создаёт движок SQLAlchemy для in-memory SQLite базы данных; echo=False отключает логирование SQL-запросов
    Base.metadata.create_all(engine)  # Создаёт все таблицы, определённые в моделях SQLAlchemy (на основе Base), в базе данных
    Session = sessionmaker(bind=engine)  # Создаёт фабрику сессий SQLAlchemy, привязанную к движку базы данных
    session = Session()  # Создаёт новую сессию для взаимодействия с базой через ORM
    
    # Заполнение базы данными
    conn = engine.raw_connection()  # Получает низкоуровневое подключение к базе для выполнения сырых SQL-скриптов
    conn.executescript(INSERT_SQL)
    conn.commit()  # Фиксирует изменения в базе, чтобы данные были доступны для ORM
    conn.close()  # Закрывает низкоуровневое подключение, так как оно больше не нужно
    
    yield session  # Передаёт объект сессии тестам для выполнения ORM-запросов
    session.close()  # Закрывает сессию SQLAlchemy после завершения теста, освобождая ресурсы


#ASSERTS

def test_customers_born_after_1990(db_connection):
    """Тест запроса: Получить всех клиентов, родившихся после 1990 года."""
    query = REQUEST[0]
    cursor = db_connection.execute(query)
    results = cursor.fetchall()
    assert len(results) == 6

def test_active_loan_products(db_connection):
    """Тест запроса: Найти все активные кредитные продукты."""
    query = REQUEST[1]
    cursor = db_connection.execute(query)
    results = cursor.fetchall()
    assert len(results) == 4

def test_total_balance_per_customer(db_connection):
    """Тест запроса: Получить сумму балансов всех счетов для каждого клиента."""
    query = REQUEST[2]
    cursor = db_connection.execute(query)
    results = cursor.fetchall()
    assert len(results) == 10

def test_loans_after_may_2024(db_connection):
    """Тест запроса: Найти все кредиты, выданные после 1 мая 2024 года."""
    query = REQUEST[3]
    cursor = db_connection.execute(query)
    results = cursor.fetchall()
    assert len(results) == 4

def test_transactions_over_700(db_connection):
    """Тест запроса: Получить все транзакции с суммой более 700."""
    query = REQUEST[4]
    cursor = db_connection.execute(query)
    results = cursor.fetchall()
    assert len(results) == 7

#ORM

def test_customers_with_usd_accounts_orm(db_connection, orm_session):
    """Тест запроса: Найти клиентов, у которых есть счета в USD."""
    sql_query = REQUEST[5]
    cursor = db_connection.execute(sql_query)
    sql_results = cursor.fetchall()  # Получаем результаты SQL как список кортежей

    # Выполнение эквивалентного ORM-запроса
    orm_results = (
        orm_session.query(Customer.first_name, Customer.last_name)
        .join(Account)
        .filter(Account.currency == 'USD')
        .distinct()
        .all()
    )  # Получаем результаты ORM как список кортежей

    # Сравнение результатов
    assert len(sql_results) == len(orm_results), "Количество результатов SQL и ORM должно совпадать"
    assert set(sql_results) == set(orm_results)

def test_transaction_count_by_target_type_orm(db_connection, orm_session):
    """Тест запроса: Получить общее количество транзакций для каждого типа цели."""
    sql_query = REQUEST[6]
    cursor = db_connection.execute(sql_query)
    sql_results = cursor.fetchall()  # Получаем результаты SQL как список кортежей

    # Выполнение эквивалентного ORM-запроса
    orm_results = (
        orm_session.query(Transaction.type_of_target, func.count().label('transaction_count'))
        .group_by(Transaction.type_of_target)
        .all()
    )  # Получаем результаты ORM как список кортежей

    # Сравнение результатов
    assert len(sql_results) == len(orm_results), "Количество результатов SQL и ORM должно совпадать"
    assert set(sql_results) == set(orm_results)

def test_accounts_with_loan_payments_orm(db_connection, orm_session):
    """Тест запроса: Найти счета, с которых были отправлены транзакции на оплату кредитов."""
    sql_query = REQUEST[7]
    cursor = db_connection.execute(sql_query)
    sql_results = cursor.fetchall()  # Получаем результаты SQL как список кортежей

    # Выполнение эквивалентного ORM-запроса
    orm_results = (
        orm_session.query(Account.account_id, Customer.first_name, Customer.last_name)
        .join(Transaction, Transaction.sender_id == Account.account_id)
        .join(Customer, Customer.customer_id == Account.customer_id)
        .filter(Transaction.type_of_target == 'loan')
        .all()
    )  # Получаем результаты ORM как список кортежей

    # Сравнение результатов
    assert len(sql_results) == len(orm_results), "Количество результатов SQL и ORM должно совпадать"
    assert set(sql_results) == set(orm_results)

def test_avg_loan_amount_by_product_orm(db_connection, orm_session):
    """Тест запроса: Получить среднюю сумму кредита для каждого кредитного продукта."""
    sql_query = REQUEST[8]
    cursor = db_connection.execute(sql_query)
    sql_results = cursor.fetchall()  # Получаем результаты SQL как список кортежей 

    # Выполнение эквивалентного ORM-запроса
    orm_results = (
        orm_session.query(LoanProduct.product_name, func.avg(Loan.loan_amount).label('avg_amount'))
        .outerjoin(Loan, Loan.product_id == LoanProduct.product_id)
        .group_by(LoanProduct.product_id, LoanProduct.product_name)
        .order_by(func.avg(Loan.loan_amount).desc())
        .all()
    )  # Получаем результаты ORM как список кортежей

    # Приведение результатов к одинаковому формату (округление чисел для SQL)
    sql_results = [(name, round(float(avg), 2) if avg is not None else None) for name, avg in sql_results]
    orm_results = [(name, round(float(avg), 2) if avg is not None else None) for name, avg in orm_results]

    # Сравнение результатов
    assert len(sql_results) == len(orm_results), "Количество результатов SQL и ORM должно совпадать"
    assert sql_results == orm_results

def test_customers_with_loans_and_transactions_orm(db_connection, orm_session):
    """Тест запроса: Найти клиентов, у которых есть и кредиты, и транзакции."""
    sql_query = REQUEST[9]
    cursor = db_connection.execute(sql_query)
    sql_results = cursor.fetchall()  # Получаем результаты SQL как список кортежей

    # Выполнение эквивалентного ORM-запроса
    orm_results = (
        orm_session.query(Customer.customer_id, Customer.first_name, Customer.last_name)
        .join(Loan, Loan.customer_id == Customer.customer_id)
        .join(Account, Account.customer_id == Customer.customer_id)
        .join(Transaction, Transaction.sender_id == Account.account_id)
        .distinct()
        .order_by(Customer.customer_id)
        .all()
    )  # Получаем результаты ORM как список кортежей

    # Сравнение результатов
    assert len(sql_results) == len(orm_results), "Количество результатов SQL и ORM должно совпадать"
    assert set(sql_results) == set(orm_results)