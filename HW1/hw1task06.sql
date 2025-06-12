SELECT dt, high_price, vol
FROM public.coins
where 
    symbol = 'DOGE' 
    AND avg_price > 0.001 
    AND dt LIKE '2018%'        -- приколисты в текстовом формате дату ввели