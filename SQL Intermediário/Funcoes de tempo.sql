-- Diferenca entre Date e Datetime

-- GETDATE()
select getdate();

-- DATEDIFF()
select datediff(day, '2002-03-25', getdate());

-- DATEADD()
select dateadd(day, -1, getdate());

-- DATEPART()
select datepart(weekday, getdate());

-- FORMAT
select format(cast(getdate() as date), 'dd/MM/yyyy')