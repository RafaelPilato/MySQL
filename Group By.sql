use hotelsaintgermain;

-- Contar quantos clientes existem no hotel;

select count(*) TotalClientes from cliente;

-- Listar os clientes do hotel, contando quantos telefones cada cliente possui;

select c.Nome, count(*) TotalNumeros
from cliente c
inner join telefone t
	on t.IdCliente = c.IdCliente
group by c.Nome;

-- Listar o estado e o nome das cidades dos clientes do hotel, contando quantos clientes há em cada cidade;

select br.Estado, br.Cidade, count(*) ClientesCidade
from clientebrasileiro br
group by br.Cidade, br.Estado;

-- Listar quantos quartos existem no hotel, agrupando por andar;

select andar, count(*) TotalQuartos
from quarto
group by andar;

-- Apresentar o valor médio das diárias dos quartos do hotel;

select avg(q.VlrDiaria) MediaQuartos
from quarto q;

-- Listar o valor médio das diárias dos quartos do hotel, agrupando por andar;

select q.Andar, avg(q.VlrDiaria) MediaQuartos
from quarto q
group by q.Andar;

-- Listar o tipo de quarto e a quantidade de quartos de cada tipo;

select q.tipo, count(*) QtdQuartos
from quarto q 
group by q.tipo;

-- Listar o valor médio das diárias dos quartos do hotel, agrupando por tipo;

select q.tipo, avg(q.VlrDiaria) MediaQuartos
from quarto q
group by q.tipo;

-- Contar quantas reservas foram feitas no último ano;

select count(*) QtdReservas
from reserva r
where year(r.Dta) = year(curdate());

-- Listar a data de entrada e a quantidade de ocupações no último ano, agrupado pela data de entrada;

select o.Entrada, count(*) QtdOcupacoes
from ocupacao o
group by o.Entrada;

-- Listar a data de saída e o valor total das ocupações, agrupado pela data de saída;

select o.saida, sum(po.valorTotal) TotalOcupacao
from ocupacao o
inner join pagamentoocupacao po
	on po.NroReserva = o.NroReserva
group by o.saida;

-- Apresentar o valor médio dos pratos do restaurante;

select avg(r.preco) MediaPrecos
from restaurante r;

-- Apresentar o valor total pago em ocupações no ano atual;

select sum(po.ValorTotal) TotalOcupacoes
from pagamentoOcupacao po
where year(DtaHora) = year(curdate());

-- Listar o número da reserva e o valor total consumido em restaurante por cada reserva;