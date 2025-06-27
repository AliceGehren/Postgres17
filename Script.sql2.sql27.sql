--1) Quantos filmes há em Português?

select count(*) from film f 
inner join "language" l  on l.language_id =  f.language_id
where l."name" = 'Português;'

--2) quantos clientes alugaram o filme de id=7?

select count(*) from customer c 
inner join rental r 
on r.customer_id = c.customer_id 
inner join inventory i
on r.inventory_id = i.inventory_id 
inner join film f  
on i.film_id = f.film_id 
where f.film_id = 7;

--3) Quantos aluguéis foram feitos no total?

select count(*) from rental;

--4) Qual foi o custo do filme de id=600?

select replacement_cost from film f 
where film_id = 600;

--5) Qual funcionário alugou mais filmes?

select
	s.first_name,
	s.last_name
from
	staff s
inner join rental r on
	s.staff_id = r.staff_id
group by
	s.first_name ,
	s.last_name
order by 
	count(r.rental_id) desc
limit 1; 

--6) Quantos funciários tem em cada loja?

select
	a.address,
	count(*)
from
	staff sta
inner join store sto on 
	sta.store_id = sto.store_id
inner join address a on
a.address_id = sto.address_id
group by
	a.address;

--7) Liste as seguintes colunas título do filme, idioma, custo, datado último aluguel, nome do cliente do último aluguel, funcionário que alugou, loja do aluguel e preço do aluguel?

select 








