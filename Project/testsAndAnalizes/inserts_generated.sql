
INSERT INTO Customers (customer_id, first_name, last_name, phone_number, sex, date_of_birth) VALUES
(1, 'Shannon', 'Cervantes', '726.903.3224x60', 'F', '1990-01-06'),
(2, 'Keith', 'Berry', '717-242-2215', 'M', '1962-10-23'),
(3, 'Kevin', 'Jones', '001-894-973-611', 'M', '1965-02-16'),
(4, 'Anna', 'Hodges', '+1-880-551-2824', 'F', '1989-03-15'),
(5, 'Patricia', 'Coleman', '001-619-283-729', 'F', '1969-08-07'),
(6, 'Natasha', 'Benjamin', '+1-662-581-4782', 'F', '2000-10-24'),
(7, 'Kevin', 'Williams', '(568)536-3363', 'M', '1979-10-11'),
(8, 'Marc', 'Hunt', '2694011087', 'M', '1963-08-28'),
(9, 'Wayne', 'Arias', '5272694444', 'M', '1989-05-09'),
(10, 'Mary', 'Reed', '001-366-205-813', 'F', '1970-10-11'),
(11, 'Seth', 'Soto', '464.307.1341x57', 'M', '1971-01-15'),
(12, 'Amanda', 'Harrison', '299.607.9906x93', 'F', '1991-02-06'),
(13, 'Natasha', 'Hall', '532-427-1943x46', 'F', '1982-05-26'),
(14, 'Valerie', 'Johnson', '623.993.1908x42', 'F', '1962-02-10'),
(15, 'Theresa', 'Robinson', '001-217-462-410', 'F', '1985-11-05'),
(16, 'Jimmy', 'Blake', '+1-239-826-7729', 'M', '2003-08-07'),
(17, 'Jennifer', 'Weeks', '(685)778-5034x6', 'F', '1990-08-26'),
(18, 'Jerry', 'Mckinney', '+1-439-351-0749', 'M', '2004-02-07'),
(19, 'Scott', 'Williams', '+1-727-216-6785', 'M', '1984-02-20'),
(20, 'Rachel', 'Hendricks', '(655)993-2198x0', 'F', '1965-04-09'),
(21, 'Scott', 'Adams', '001-347-223-370', 'M', '1964-07-27'),
(22, 'Timothy', 'Tucker', '950.814.3264x88', 'M', '1961-09-30'),
(23, 'Jared', 'Grant', '+1-902-778-1918', 'M', '1979-11-16'),
(24, 'Eric', 'Rosales', '371-325-3843', 'M', '1963-05-08'),
(25, 'Aaron', 'Martinez', '001-837-302-982', 'M', '1999-06-06'),
(26, 'Steven', 'Herrera', '764-353-9293', 'M', '1990-06-01'),
(27, 'Jessica', 'Schwartz', '+1-751-314-1319', 'F', '1997-07-22'),
(28, 'Micheal', 'Walker', '(349)336-1059x6', 'M', '1978-12-06'),
(29, 'Mark', 'Frye', '(950)264-5949', 'M', '1963-08-12'),
(30, 'Rhonda', 'Todd', '001-580-962-921', 'F', '1990-07-27'),
(31, 'Briana', 'Price', '220-640-2735x60', 'F', '1974-08-12'),
(32, 'Shelby', 'Thompson', '(289)733-6646', 'F', '1962-12-07'),
(33, 'Sharon', 'Lewis', '825-839-6700x88', 'F', '1994-09-05'),
(34, 'Courtney', 'Krause', '+1-267-487-6687', 'F', '1998-07-31'),
(35, 'Kenneth', 'Robbins', '625.340.3786x70', 'M', '1970-09-11'),
(36, 'Susan', 'Scott', '(369)301-4472x6', 'F', '1977-08-23'),
(37, 'Amber', 'Ramirez', '(563)393-6316', 'F', '2002-08-12'),
(38, 'Julie', 'Wilkinson', '(334)680-6072x1', 'F', '1990-07-06'),
(39, 'Bill', 'Huber', '(931)502-3055', 'M', '2005-04-24'),
(40, 'James', 'Frazier', '9988743466', 'M', '1999-12-29'),
(41, 'Kelli', 'Perez', '+1-219-252-0271', 'F', '1981-02-05'),
(42, 'Marcus', 'Olson', '+1-705-327-1892', 'M', '2003-07-06'),
(43, 'Chad', 'Munoz', '+1-241-683-3482', 'M', '1965-07-15'),
(44, 'Kristie', 'Moore', '(673)854-0973', 'F', '1978-07-03'),
(45, 'Julie', 'Wilson', '535-354-5583x83', 'F', '1975-11-14'),
(46, 'Erin', 'Johnson', '594-333-2553', 'F', '1964-04-29'),
(47, 'Jessica', 'Gomez', '(768)632-7906x3', 'F', '1976-10-18'),
(48, 'Joseph', 'Harrison', '640.370.5292x79', 'M', '1977-11-27'),
(49, 'Robert', 'Freeman', '+1-879-716-9044', 'M', '1977-09-19'),
(50, 'Leslie', 'Hill', '733-553-5764', 'M', '1982-02-13');


INSERT INTO Accounts (account_id, customer_id, account_type, balance, currency) VALUES
(1, 32, 'Savings', 32247.15, 'USD'),
(2, 11, 'Investment', 30890.43, 'EUR'),
(3, 44, 'Savings', 36905.92, 'GBP'),
(4, 8, 'Savings', 10172.62, 'USD'),
(5, 28, 'Investment', 3004.98, 'GBP'),
(6, 16, 'Checking', 2324.56, 'GBP'),
(7, 6, 'Checking', 13164.08, 'GBP'),
(8, 7, 'Investment', 16422.0, 'USD'),
(9, 17, 'Investment', 26677.72, 'GBP'),
(10, 18, 'Investment', 41064.58, 'USD'),
(11, 30, 'Savings', 21366.3, 'GBP'),
(12, 29, 'Checking', 40976.52, 'GBP'),
(13, 42, 'Savings', 18293.55, 'GBP'),
(14, 48, 'Savings', 5385.46, 'GBP'),
(15, 24, 'Checking', 22863.47, 'USD'),
(16, 16, 'Investment', 31890.54, 'GBP'),
(17, 17, 'Investment', 20294.06, 'GBP'),
(18, 43, 'Investment', 19975.49, 'GBP'),
(19, 22, 'Checking', 7005.03, 'GBP'),
(20, 46, 'Checking', 29709.25, 'EUR'),
(21, 35, 'Checking', 45397.51, 'EUR'),
(22, 34, 'Savings', 44119.35, 'EUR'),
(23, 29, 'Savings', 30296.63, 'GBP'),
(24, 12, 'Savings', 2376.88, 'GBP'),
(25, 31, 'Savings', 49017.32, 'USD'),
(26, 16, 'Checking', 26342.71, 'EUR'),
(27, 13, 'Investment', 19162.75, 'EUR'),
(28, 32, 'Savings', 36493.26, 'GBP'),
(29, 6, 'Investment', 47057.66, 'GBP'),
(30, 22, 'Investment', 41904.17, 'GBP'),
(31, 16, 'Savings', 2232.03, 'GBP'),
(32, 30, 'Checking', 12335.62, 'USD'),
(33, 10, 'Checking', 18051.09, 'GBP'),
(34, 18, 'Checking', 41623.18, 'GBP'),
(35, 27, 'Checking', 49140.04, 'USD'),
(36, 11, 'Checking', 18515.56, 'EUR'),
(37, 29, 'Investment', 800.12, 'USD'),
(38, 28, 'Savings', 29498.09, 'GBP'),
(39, 40, 'Savings', 20099.02, 'GBP'),
(40, 20, 'Checking', 10628.35, 'GBP'),
(41, 50, 'Investment', 39797.81, 'USD'),
(42, 18, 'Checking', 5968.67, 'GBP'),
(43, 11, 'Checking', 12646.01, 'EUR'),
(44, 8, 'Savings', 36386.26, 'USD'),
(45, 38, 'Checking', 28555.27, 'EUR'),
(46, 24, 'Investment', 29100.64, 'EUR'),
(47, 34, 'Savings', 2754.5, 'EUR'),
(48, 43, 'Investment', 23242.59, 'GBP'),
(49, 18, 'Savings', 42951.5, 'USD'),
(50, 33, 'Investment', 49278.84, 'GBP'),
(51, 44, 'Savings', 39265.65, 'USD'),
(52, 46, 'Savings', 28725.72, 'GBP'),
(53, 49, 'Checking', 31852.55, 'EUR'),
(54, 40, 'Savings', 48154.16, 'GBP'),
(55, 28, 'Savings', 4792.87, 'GBP'),
(56, 40, 'Savings', 35763.05, 'EUR'),
(57, 32, 'Investment', 42087.68, 'EUR'),
(58, 31, 'Investment', 22942.77, 'GBP'),
(59, 45, 'Investment', 523.79, 'GBP'),
(60, 6, 'Checking', 18572.42, 'GBP'),
(61, 47, 'Savings', 34547.19, 'USD'),
(62, 12, 'Checking', 919.89, 'EUR'),
(63, 3, 'Checking', 1593.96, 'EUR'),
(64, 10, 'Investment', 17113.94, 'USD'),
(65, 44, 'Savings', 21594.57, 'GBP'),
(66, 45, 'Checking', 23111.8, 'USD'),
(67, 28, 'Investment', 23369.22, 'EUR'),
(68, 41, 'Investment', 24054.73, 'EUR'),
(69, 25, 'Investment', 41399.42, 'EUR'),
(70, 21, 'Investment', 10543.88, 'EUR'),
(71, 36, 'Checking', 8891.99, 'GBP'),
(72, 24, 'Checking', 45549.69, 'EUR'),
(73, 6, 'Checking', 23730.38, 'USD'),
(74, 4, 'Investment', 8306.84, 'USD'),
(75, 14, 'Savings', 33563.61, 'GBP'),
(76, 25, 'Savings', 39163.75, 'USD'),
(77, 17, 'Checking', 24400.63, 'USD'),
(78, 48, 'Savings', 29981.13, 'EUR'),
(79, 26, 'Checking', 4297.89, 'USD'),
(80, 27, 'Savings', 23805.11, 'USD'),
(81, 11, 'Investment', 11617.06, 'GBP'),
(82, 20, 'Investment', 48313.88, 'GBP'),
(83, 36, 'Savings', 4022.21, 'GBP'),
(84, 45, 'Investment', 4476.79, 'GBP'),
(85, 26, 'Savings', 12764.53, 'USD'),
(86, 45, 'Checking', 39980.95, 'EUR'),
(87, 44, 'Checking', 23415.12, 'USD'),
(88, 2, 'Investment', 37670.72, 'GBP'),
(89, 31, 'Savings', 3060.19, 'EUR'),
(90, 39, 'Investment', 24825.43, 'EUR'),
(91, 35, 'Investment', 12128.42, 'EUR'),
(92, 19, 'Checking', 26978.31, 'GBP'),
(93, 7, 'Savings', 49933.07, 'EUR'),
(94, 37, 'Savings', 10718.62, 'EUR'),
(95, 42, 'Savings', 44233.03, 'GBP'),
(96, 4, 'Investment', 45832.7, 'GBP'),
(97, 14, 'Savings', 12186.23, 'GBP'),
(98, 15, 'Savings', 13458.88, 'GBP'),
(99, 26, 'Investment', 4981.63, 'EUR'),
(100, 15, 'Checking', 31394.77, 'USD');


INSERT INTO LoanProducts (product_id, product_name, interest_rate, max_loan_amount, is_active, valid_from, valid_to) VALUES
(1, 'Personal Loan', 4.99, 77631.19, 1, '2021-04-16', NULL),
(2, 'Car Loan', 7.23, 33178.38, 0, '2023-10-02', NULL),
(3, 'Home Loan', 6.23, 94823.5, 1, '2020-04-14', NULL),
(4, 'Education Loan', 5.6, 64285.6, 0, '2023-05-23', NULL),
(5, 'Business Loan', 3.65, 20883.34, 1, '2020-06-25', NULL);


INSERT INTO Loans (loan_id, customer_id, account_id, product_id, loan_amount, start_date) VALUES
(1, 45, 84, 5, 30168.95, '2025-04-01'),
(2, 6, 73, 4, 4118.62, '2024-11-08'),
(3, 16, 26, 3, 20073.8, '2023-03-07'),
(4, 41, 68, 1, 1718.87, '2023-03-13'),
(5, 41, 68, 3, 36776.42, '2023-08-22'),
(6, 8, 4, 1, 8351.95, '2024-12-22'),
(7, 31, 25, 2, 6357.35, '2024-10-19'),
(8, 28, 5, 5, 26658.75, '2025-05-11'),
(9, 45, 84, 4, 47230.07, '2024-02-21'),
(10, 18, 42, 5, 19241.82, '2023-03-07'),
(11, 48, 14, 4, 11738.49, '2025-03-25'),
(12, 12, 62, 4, 33858.81, '2023-04-20'),
(13, 32, 28, 1, 19954.57, '2023-02-09'),
(14, 21, 70, 2, 36483.96, '2023-06-29'),
(15, 44, 51, 1, 4887.09, '2023-11-01'),
(16, 41, 68, 1, 4710.2, '2024-05-16'),
(17, 14, 97, 5, 43790.98, '2025-04-20'),
(18, 16, 31, 1, 36853.69, '2024-02-07'),
(19, 7, 8, 1, 22103.42, '2023-03-14'),
(20, 8, 4, 5, 17053.27, '2023-03-04'),
(21, 7, 93, 5, 15600.82, '2024-07-07'),
(22, 28, 67, 4, 30978.69, '2025-03-05'),
(23, 35, 21, 5, 49917.6, '2023-10-25'),
(24, 36, 71, 3, 15324.34, '2023-10-10'),
(25, 11, 81, 4, 48471.81, '2023-03-02'),
(26, 24, 46, 1, 41675.66, '2023-09-02'),
(27, 39, 90, 5, 45256.75, '2023-07-18'),
(28, 26, 99, 1, 34007.07, '2023-04-20'),
(29, 36, 83, 3, 16525.34, '2024-05-09'),
(30, 28, 5, 1, 14133.51, '2023-01-20');


INSERT INTO Transactions (transaction_id, sender_id, type_of_target, target_account_id, target_loan_id, transaction_date, amount) VALUES
(1, 75, 'account', 66, NULL, '2023-09-26', 7842.0),
(2, 80, 'loan', NULL, 11, '2023-02-05', 3283.86),
(3, 82, 'account', 66, NULL, '2023-04-05', 778.41),
(4, 80, 'account', 69, NULL, '2024-03-19', 6217.91),
(5, 74, 'account', 92, NULL, '2025-01-07', 8011.69),
(6, 14, 'account', 25, NULL, '2025-01-04', 1411.41),
(7, 8, 'account', 90, NULL, '2024-12-09', 1573.29),
(8, 56, 'account', 83, NULL, '2023-08-30', 4550.77),
(9, 34, 'loan', NULL, 6, '2024-11-19', 5393.45),
(10, 86, 'loan', NULL, 23, '2023-10-02', 968.67),
(11, 80, 'account', 88, NULL, '2024-10-20', 2556.12),
(12, 3, 'loan', NULL, 26, '2023-10-29', 2043.27),
(13, 37, 'account', 33, NULL, '2025-03-14', 4792.36),
(14, 90, 'loan', NULL, 3, '2024-03-09', 3496.12),
(15, 13, 'account', 61, NULL, '2024-04-26', 5257.89),
(16, 27, 'account', 51, NULL, '2024-05-05', 679.73),
(17, 36, 'loan', NULL, 27, '2024-07-23', 2763.26),
(18, 33, 'account', 55, NULL, '2023-03-14', 4042.17),
(19, 5, 'account', 80, NULL, '2023-10-07', 7334.63),
(20, 68, 'loan', NULL, 20, '2023-08-15', 670.89),
(21, 28, 'loan', NULL, 29, '2024-09-10', 7913.98),
(22, 42, 'account', 56, NULL, '2024-01-29', 411.71),
(23, 63, 'loan', NULL, 4, '2023-06-23', 2989.15),
(24, 48, 'account', 71, NULL, '2024-12-26', 3969.15),
(25, 93, 'account', 84, NULL, '2024-02-16', 6989.9),
(26, 82, 'account', 20, NULL, '2023-10-20', 8011.45),
(27, 43, 'account', 98, NULL, '2024-09-15', 7539.27),
(28, 2, 'loan', NULL, 25, '2023-11-08', 536.37),
(29, 92, 'account', 43, NULL, '2023-07-10', 1929.4),
(30, 23, 'loan', NULL, 10, '2023-03-25', 2522.36),
(31, 44, 'account', 10, NULL, '2024-04-01', 1687.09),
(32, 11, 'loan', NULL, 22, '2024-03-03', 9860.63),
(33, 45, 'account', 78, NULL, '2023-11-09', 1428.88),
(34, 13, 'loan', NULL, 28, '2023-04-08', 6752.13),
(35, 21, 'account', 4, NULL, '2024-10-27', 6644.25),
(36, 60, 'account', 47, NULL, '2024-04-18', 2903.86),
(37, 17, 'account', 46, NULL, '2025-03-29', 9476.99),
(38, 31, 'loan', NULL, 19, '2023-06-28', 4128.2),
(39, 72, 'account', 1, NULL, '2025-03-08', 1337.78),
(40, 18, 'loan', NULL, 15, '2023-07-03', 1952.8),
(41, 41, 'account', 28, NULL, '2024-07-05', 9261.19),
(42, 11, 'account', 6, NULL, '2024-04-24', 9568.91),
(43, 2, 'loan', NULL, 8, '2023-04-27', 4444.61),
(44, 48, 'account', 78, NULL, '2024-02-07', 3620.38),
(45, 38, 'account', 52, NULL, '2023-02-10', 9508.92),
(46, 76, 'account', 66, NULL, '2023-10-24', 220.97),
(47, 9, 'account', 40, NULL, '2023-10-22', 2905.36),
(48, 22, 'loan', NULL, 16, '2023-04-13', 334.53),
(49, 74, 'account', 70, NULL, '2023-09-20', 4615.13),
(50, 28, 'loan', NULL, 17, '2024-02-04', 8203.7),
(51, 82, 'loan', NULL, 10, '2024-04-07', 1221.27),
(52, 82, 'account', 20, NULL, '2023-10-24', 9438.05),
(53, 60, 'account', 65, NULL, '2023-04-13', 4064.56),
(54, 9, 'loan', NULL, 5, '2025-03-22', 7933.61),
(55, 9, 'loan', NULL, 17, '2024-04-09', 2524.51),
(56, 6, 'account', 75, NULL, '2023-11-25', 2401.54),
(57, 91, 'loan', NULL, 20, '2024-09-06', 7537.95),
(58, 38, 'loan', NULL, 25, '2023-11-03', 6577.59),
(59, 85, 'account', 63, NULL, '2024-10-19', 9951.02),
(60, 72, 'loan', NULL, 15, '2024-09-25', 153.68),
(61, 77, 'account', 2, NULL, '2024-03-17', 1967.06),
(62, 52, 'account', 2, NULL, '2024-12-03', 5397.38),
(63, 91, 'loan', NULL, 14, '2024-05-30', 1971.87),
(64, 94, 'account', 19, NULL, '2023-02-26', 5033.51),
(65, 55, 'account', 55, NULL, '2023-04-06', 6346.5),
(66, 88, 'loan', NULL, 23, '2025-03-26', 154.34),
(67, 49, 'loan', NULL, 30, '2025-01-09', 7289.87),
(68, 86, 'account', 94, NULL, '2025-02-16', 7430.3),
(69, 78, 'account', 6, NULL, '2023-07-01', 9914.25),
(70, 11, 'loan', NULL, 24, '2025-02-28', 8601.35),
(71, 6, 'loan', NULL, 14, '2023-11-23', 6465.15),
(72, 68, 'account', 40, NULL, '2023-05-18', 4465.45),
(73, 16, 'account', 93, NULL, '2023-12-27', 2821.03),
(74, 10, 'account', 27, NULL, '2023-03-05', 62.31),
(75, 83, 'loan', NULL, 13, '2023-03-09', 1121.83),
(76, 81, 'account', 4, NULL, '2025-04-16', 1232.47),
(77, 36, 'loan', NULL, 25, '2025-02-05', 9205.85),
(78, 74, 'loan', NULL, 1, '2024-05-15', 9246.1),
(79, 82, 'account', 84, NULL, '2024-06-28', 822.95),
(80, 85, 'loan', NULL, 24, '2023-08-08', 402.77),
(81, 65, 'loan', NULL, 11, '2024-09-04', 7487.37),
(82, 86, 'loan', NULL, 17, '2024-12-11', 5951.19),
(83, 14, 'account', 70, NULL, '2023-04-26', 8513.99),
(84, 22, 'loan', NULL, 25, '2024-06-20', 5099.05),
(85, 60, 'loan', NULL, 18, '2023-10-24', 1438.05),
(86, 69, 'account', 32, NULL, '2023-06-19', 5648.64),
(87, 26, 'loan', NULL, 28, '2024-11-20', 3243.73),
(88, 69, 'account', 87, NULL, '2025-02-25', 2461.24),
(89, 17, 'account', 1, NULL, '2024-12-13', 3175.53),
(90, 63, 'account', 61, NULL, '2023-02-02', 5483.37),
(91, 13, 'loan', NULL, 23, '2023-03-13', 2254.56),
(92, 44, 'loan', NULL, 9, '2023-11-05', 5352.39),
(93, 25, 'account', 44, NULL, '2023-10-14', 2946.72),
(94, 50, 'account', 17, NULL, '2025-04-12', 6841.9),
(95, 70, 'account', 53, NULL, '2025-03-10', 837.93),
(96, 32, 'loan', NULL, 10, '2023-10-09', 5401.63),
(97, 49, 'account', 92, NULL, '2023-04-10', 8979.36),
(98, 47, 'loan', NULL, 2, '2025-04-19', 3462.94),
(99, 57, 'account', 20, NULL, '2024-01-11', 860.25),
(100, 64, 'account', 33, NULL, '2025-03-16', 5615.72),
(101, 38, 'loan', NULL, 28, '2023-11-17', 1979.71),
(102, 69, 'loan', NULL, 5, '2025-04-23', 4078.33),
(103, 6, 'account', 39, NULL, '2023-07-29', 4635.9),
(104, 84, 'loan', NULL, 5, '2024-07-20', 3556.27),
(105, 43, 'account', 79, NULL, '2024-06-27', 9842.47),
(106, 40, 'loan', NULL, 22, '2024-01-24', 3452.76),
(107, 13, 'account', 52, NULL, '2024-02-11', 371.24),
(108, 12, 'loan', NULL, 13, '2024-09-09', 4678.11),
(109, 52, 'account', 26, NULL, '2024-02-21', 1710.5),
(110, 53, 'account', 81, NULL, '2023-04-01', 8989.91),
(111, 100, 'loan', NULL, 9, '2024-08-24', 7134.49),
(112, 78, 'loan', NULL, 27, '2024-01-04', 5552.48),
(113, 68, 'loan', NULL, 8, '2023-02-27', 466.54),
(114, 15, 'account', 38, NULL, '2023-11-11', 3105.5),
(115, 3, 'account', 63, NULL, '2024-10-18', 8926.76),
(116, 25, 'loan', NULL, 12, '2023-12-23', 3266.58),
(117, 42, 'loan', NULL, 2, '2024-10-17', 1307.02),
(118, 53, 'loan', NULL, 4, '2024-01-30', 2502.33),
(119, 19, 'account', 92, NULL, '2024-11-24', 2594.59),
(120, 18, 'loan', NULL, 14, '2023-10-03', 2138.91),
(121, 55, 'account', 6, NULL, '2024-11-04', 4997.55),
(122, 98, 'loan', NULL, 11, '2024-02-18', 1726.41),
(123, 44, 'account', 47, NULL, '2023-11-19', 7761.58),
(124, 97, 'loan', NULL, 29, '2023-11-25', 821.28),
(125, 63, 'loan', NULL, 14, '2025-01-26', 214.37),
(126, 87, 'account', 72, NULL, '2024-06-11', 4550.41),
(127, 20, 'account', 32, NULL, '2023-03-25', 521.77),
(128, 86, 'account', 87, NULL, '2024-10-25', 8060.72),
(129, 12, 'loan', NULL, 18, '2024-02-18', 3841.33),
(130, 10, 'account', 24, NULL, '2023-02-10', 7052.91),
(131, 22, 'account', 79, NULL, '2025-03-10', 2805.5),
(132, 77, 'account', 69, NULL, '2023-09-15', 5097.3),
(133, 39, 'account', 34, NULL, '2024-07-11', 51.27),
(134, 35, 'loan', NULL, 9, '2024-02-04', 1782.86),
(135, 33, 'loan', NULL, 24, '2025-02-17', 8046.79),
(136, 38, 'account', 18, NULL, '2023-05-26', 4544.66),
(137, 44, 'loan', NULL, 13, '2023-11-12', 5879.02),
(138, 54, 'account', 90, NULL, '2025-01-01', 2021.06),
(139, 87, 'loan', NULL, 15, '2025-04-20', 6523.86),
(140, 26, 'loan', NULL, 2, '2024-07-14', 9418.27),
(141, 44, 'loan', NULL, 10, '2023-04-09', 2181.46),
(142, 90, 'loan', NULL, 1, '2024-09-08', 125.98),
(143, 13, 'account', 89, NULL, '2025-04-03', 4778.25),
(144, 75, 'loan', NULL, 13, '2024-12-09', 8382.82),
(145, 74, 'account', 76, NULL, '2024-07-27', 2989.83),
(146, 9, 'account', 97, NULL, '2024-01-08', 6405.52),
(147, 86, 'account', 44, NULL, '2024-04-27', 6920.6),
(148, 57, 'loan', NULL, 25, '2023-09-16', 3030.92),
(149, 33, 'loan', NULL, 13, '2024-09-03', 8749.08),
(150, 32, 'account', 10, NULL, '2023-01-10', 3116.86),
(151, 65, 'account', 22, NULL, '2025-05-01', 5224.12),
(152, 84, 'loan', NULL, 9, '2023-06-02', 7907.9),
(153, 81, 'account', 74, NULL, '2024-01-17', 6506.25),
(154, 52, 'loan', NULL, 15, '2023-05-23', 7570.69),
(155, 7, 'account', 75, NULL, '2024-04-11', 9166.5),
(156, 6, 'loan', NULL, 14, '2024-06-01', 3093.08),
(157, 24, 'account', 2, NULL, '2023-12-23', 9368.02),
(158, 53, 'loan', NULL, 15, '2024-10-20', 8416.56),
(159, 36, 'loan', NULL, 23, '2024-05-20', 8858.47),
(160, 3, 'loan', NULL, 14, '2024-08-09', 9914.04),
(161, 38, 'loan', NULL, 15, '2025-04-20', 3608.08),
(162, 47, 'loan', NULL, 2, '2025-03-03', 6429.68),
(163, 25, 'account', 68, NULL, '2023-06-17', 5736.31),
(164, 32, 'account', 15, NULL, '2023-03-16', 6800.94),
(165, 12, 'account', 60, NULL, '2024-09-18', 1892.07),
(166, 77, 'loan', NULL, 2, '2023-07-29', 9016.18),
(167, 13, 'loan', NULL, 17, '2023-02-09', 5900.4),
(168, 43, 'account', 33, NULL, '2023-11-04', 3673.07),
(169, 39, 'loan', NULL, 20, '2023-01-26', 2132.32),
(170, 43, 'loan', NULL, 23, '2023-04-22', 9147.6),
(171, 66, 'account', 84, NULL, '2024-09-13', 5702.7),
(172, 80, 'account', 58, NULL, '2025-01-09', 5526.47),
(173, 37, 'account', 11, NULL, '2025-01-13', 4955.76),
(174, 42, 'account', 83, NULL, '2023-02-19', 5347.35),
(175, 28, 'account', 81, NULL, '2024-01-03', 3168.53),
(176, 16, 'account', 73, NULL, '2024-03-29', 5221.22),
(177, 77, 'loan', NULL, 4, '2024-08-07', 853.77),
(178, 79, 'account', 79, NULL, '2024-01-14', 2141.97),
(179, 22, 'account', 23, NULL, '2024-01-04', 9694.39),
(180, 52, 'account', 51, NULL, '2023-08-09', 6667.84),
(181, 25, 'account', 86, NULL, '2024-07-20', 6969.21),
(182, 89, 'loan', NULL, 14, '2024-02-15', 8989.38),
(183, 62, 'account', 16, NULL, '2025-02-11', 4182.99),
(184, 75, 'loan', NULL, 23, '2023-06-16', 2800.88),
(185, 69, 'account', 49, NULL, '2024-03-14', 6973.08),
(186, 18, 'loan', NULL, 19, '2023-09-10', 6772.14),
(187, 62, 'loan', NULL, 28, '2024-06-07', 1866.08),
(188, 58, 'account', 49, NULL, '2023-06-27', 2425.71),
(189, 18, 'loan', NULL, 20, '2023-05-15', 3822.94),
(190, 62, 'account', 68, NULL, '2024-01-20', 2133.15),
(191, 44, 'account', 54, NULL, '2024-03-30', 6985.88),
(192, 36, 'account', 85, NULL, '2023-10-19', 226.3),
(193, 49, 'account', 58, NULL, '2023-01-12', 8639.02),
(194, 21, 'account', 39, NULL, '2025-01-08', 3233.87),
(195, 45, 'loan', NULL, 20, '2024-09-20', 9762.84),
(196, 91, 'loan', NULL, 24, '2023-01-18', 1547.0),
(197, 33, 'loan', NULL, 30, '2023-11-09', 7905.15),
(198, 23, 'account', 9, NULL, '2023-07-22', 3566.6),
(199, 49, 'account', 99, NULL, '2025-03-05', 443.83),
(200, 82, 'loan', NULL, 11, '2024-01-22', 9446.01);