# SAS
PROC SQL;
create table CARS1 as
SELECT invoice, horsepower, length, weight

FROM
SASHELP.CARS
WHERE make in ('Audi', 'BMW')
;
RUN;
proc reg data=cars1;
model horsepower=weight ; 
run;

