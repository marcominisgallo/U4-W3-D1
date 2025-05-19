/*ES. 1*/
select *
from clienti
where nome='Mario';

/*ES. 2*/
select nome
from clienti
where anno_di_nascita=1982;

/*ES. 3*/
select count(*) as numero_fatture
from fatture
where iva=20;

/*ES. 4*/
select id_prodotto
from prodotti
where (in_produzione=true or in_commercio=true)
and extract(year from data_attivazione)=2017;

/*ES. 5*/
select *
from fatture f, clienti c
where f.id_cliente=c.numero_cliente and f.importo<1000;

/*ES. 6*/
select numero_fattura, importo, iva, data_fattura, denominazione
from fatture fa, fornitori fo
where fa.numero_fornitore=fo.numero_fornitore;

/*ES. 7*/
select extract(year from data_fattura), count(*) 
from fatture
where iva=20
group by extract(year from data_fattura);

/*ES. 8*/
select extract(year from data_fattura), count(*),
sum(importo)as somma_importi
from fatture
group by extract(year from data_fattura);

/*ES. 9*/
select extract(year from data_fattura), count(*)
from fatture
where tipologia='A'
group by extract(year from data_fattura)
having count(*)>2;