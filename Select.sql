use hotelsaintgermain;

select Nome, Sexo from Cliente; #seleciona da tabela apenas os itens pedidos

select * from Cliente; #seleciona tudo da tabela

select distinct Andar from Quarto; #seleciona os atributos sem serem repetidos

select NroQuarto, VlrDiaria, VlrDiaria * 3 from Quarto; #possivel realizar calculos atravez do select

#Cláusula WHERE, utilizada para aplicar filtros, podem ser utilizados operadoes algébricos, relacionais e lógicos;

select NroQuarto, VlrDiaria from Quarto 
	where VlrDiaria > 100;

select NroQuarto, VlrDiaria from Quarto 
	where VlrDiaria > 80 and VlrDiaria < 210;

select IdCliente, Nome from Cliente
	where IdCliente between 3 and 5;
    
select * from Cliente #Listar tudo o que começa com A
	where Nome like 'A%';

# 'Ba%' - comece com Ba
# '%ba' - termine com ba
# '%iba%' - contenha iba
# '___' - qualquer strig com 3 caracteres
# '___%' - com pelo menos 3 caracteres

select * from Cliente order by Nome; #ordenar por ""

#desc para descendente
#asc para acendente

select * from Quarto order by Andar, VlrDiaria desc;

#atividade

#listar nome e sexo de todos os clientes por ordem algabética

select Nome, Sexo from Cliente order by	Nome;

#listar o cpf e o cep de todos os cliente brasileiros redidentes em "Curitiba"

select cpf, cep from ClienteBrasileiro
	where Cidade = 'Curitiba';
    
select cpf, cep from ClienteBrasileiro
	where Cidade = 'Sao Jose dos Pinhais';
    
#listar o número de todos os quartos por ordem decrescente de andar e crescente de valor da diária;

select NroQuarto, Andar, VlrDiaria from Quarto order by Andar desc, VlrDiaria asc;

#listar o número de todos os quarto com valor da diária entre R$ 100 e R$ 150;

select NroQuarto, VlrDiaria from Quarto
	where VlrDiaria >= 100 and VlrDiaria <= 150;
    
select NroQuarto, VlrDiaria from Quarto
	where VlrDiaria between 100 and 150;
    
#listar todas as reservas de um determinado cliente (informar qualquer código válido)

select * from Reserva
	where IdCliente = 3;
    
#listar, sem repetir, os números dos quartos que já foram ocupados algum dia;
    
select distinct NroQuarto from Reserva;

#listar, sem repetir, o número das reservas que tiveram algum tipo de aprovação pelo gerente;

select distinct NroReserva from Ocupacao;

#listar sem repetir, o número das reservas que fizeram uso do restaurante;

select distinct NroReserva from OcupacaoRestaurante;

#listar sem repetir as reservas que foram pagas em dinheiro

select NroReserva from PagamentoOcupacao
	where IdTipoPagamento = 1;