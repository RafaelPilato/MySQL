use hotelsaintgermain;

-- Listar, em ordem alfabética, o nome de todos os clientes e a data de entrada de suas reservas

select c.nome, o.entrada
from cliente c
inner join reserva r
	on r.IdCliente = c.IdCliente
inner join ocupacao o
	on o.NroReserva = r.NroReserva
order by c.nome;

-- Listar o nome e o cpf de todos os clientes brasileiros;

select c.Nome, b.Cpf
	from cliente c
    inner join clientebrasileiro b
		on b.IdCliente = c.IdCliente;
    
-- Listar o nome e o passaporte de todos os clientes estrangeiros;

select c.Nome, e.Passaporte
	from cliente c
    inner join clienteestrangeiro e
		on e.IdCliente = c.IdCliente;
        
-- Listar o número da reserva e o nome do gerente de todas as reservas aprovadas;

select r.NroReserva, g.Nome
	from Reserva r
    inner join aprovacao a
		on a.NroReserva = r.NroReserva
	inner join Gerente g
		on g.MatriculaGerente = a.MatriculaGerente;
        
-- Listar o número da reserva, a descrição e o valor dos pratos consumidos por todas as ocupações;

select o.NroReserva, r.Prato, r.Preco
	from Ocupacao o
    left join OcupacaoRestaurante ores
     on ores.NroReserva = o.NroReserva
	inner join Restaurante r
		on r.IdRestaurante = ores.IdRestaurante;
    
-- Listar o nome do cliente e o tipo de pagamento de todas as ocupações pagas;

select c.Nome, t.Descricao 
	from cliente c
	inner join reserva r
		on c.IdCliente = r.IdCliente
	inner join pagamentoOcupacao p
		on p.NroReserva = r.NroReserva
	left join tipoPagamento t
		on t.IdTipoPagamento = p.IdTipoPagamento;
        
	-- Listar o nome do cliente e os produtos utilizados nas massagens dos clientes que ficaram hospedados no último ano;

select c.Nome, ocm.Produtos, r.Dta
	from cliente c
	inner join reserva r
		on c.IdCliente = r.IdCliente
	inner join ocupacaoMassagem ocm
		on r.NroReserva = ocm.NroReserva
	where year(r.Dta) >= year(curdate());
    
-- Listar o nome do cliente, a data de nascimento e o andar do quarto em que ficaram hospedados os clientes nos últimos três meses;

select c.Nome, c.DtaNasc, q.Andar
from cliente c
inner join reserva r
	on r.IdCliente = c.IdCliente
inner join quarto q
	on q.NroQuarto = r.NroQuarto
inner join ocupacao o
	on r.NroReserva = o.NroReserva
where o.Entrada >= date_sub(curdate(), interval 3 month);

-- Listar o estado, o nome da cidade e o nome do cliente, para os clientes que se hospedaram nos últimos cinco anos.

select br.Estado, br.Cidade, c.Nome
	from ClienteBrasileiro br
	inner join Cliente c
		on br.IdCliente = c.IdCliente
	inner join Reserva r
		on r.IdCliente = c.IdCliente
	inner join Ocupacao o
		on o.NroReserva = r.NroReserva
	where o.Entrada >= date_sub(curdate(), interval 5 year);
    
/* Listar o nome do cliente, a data prevista para entrada (reservada), a data e saída da hospedagem (ocupação), o andar e o número do quarto de 
todos os clientes que se hospedaram no hotel no ano corrente */

select c.Nome, r.Dta, o.Saida, q.Andar, q.NroQuarto
from cliente c
	inner join reserva r 
		on c.IdCliente = r.IdCliente
	inner join ocupacao o
		on o.NroReserva = r.NroReserva
	inner join quarto q
		on q.NroQuarto = r.NroQuarto;