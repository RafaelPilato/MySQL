use hotelsaintgermain;

-- Questão 01

create view vBrasileiros as
select c.IdCliente, c.Nome, cb.Cpf Documento
from cliente c
inner join ClienteBrasileiro cb
	on c.IdCliente = cb.IdCliente;
    
select * from vBrasileiros;

-- Questão 02

create view vEstrangeiros as
select c.IdCliente, c.Nome, ce.passaporte Documento
from cliente c
inner join ClienteEstrangeiro ce
	on c.IdCliente = ce.IdCliente;
    
select * from vEstrangeiros;

-- Questão 03

create view vReservas as
select c.IdCliente, c.Nome, r.NroQuarto Quarto, o.Entrada
from Cliente c
inner join Reserva r
	on r.IdCliente = c.IdCliente
inner join Ocupacao o
	on r.NroReserva = o.NroReserva;
    
select * from vReservas;

-- Questão 04

create view vConsumos as
select c.IdCliente, r.Prato Consumos, r.Preco
from Cliente c
inner join Reserva re
	on c.IdCliente = re.IdCliente
inner join OcupacaoRestaurante ocr
	on re.NroReserva = ocr.NroReserva
inner join Restaurante r
	on r.IdRestaurante = ocr.IdRestaurante
union all
select c.IdCliente, f.Item Consumos, f.Preco
from Cliente c
inner join Reserva re
	on c.IdCliente = re.IdCliente
inner join OcupacaoFrigobar ocf
	on re.NroReserva = ocf.NroReserva
inner join Frigobar f
	on ocf.IdFrigobar = f.IdFrigobar
union all
select c.IdCliente, m.Tipo Consumos, m.Preco
from Cliente c
inner join Reserva re
	on c.IdCliente = re.IdCliente 
inner join OcupacaoMassagem ocm
	on re.NroReserva = ocm.NroReserva
inner join Massagem m
	on ocm.IdMassagem = m.IdMassagem;
    
select * from vConsumos;

-- Questão 05

select vb.Nome, t.Numero
from vBrasileiros vb
inner join Telefone t
	on vb.IdCliente = t.IdCliente
Order by Nome;
    
-- Questão 06

select count(*) ClientesEstrangeiros
from vEstrangeiros;

-- Questão 07

select vr.Nome
from vReservas vr
where vr.Entrada = Curdate();

-- Questão 08

select vb.Nome, count(*) TotalConsumido 
from vBrasileiros vb
inner join vConsumos vc
	on vb.IdCliente = vc.IdCliente
group by vb.Nome;