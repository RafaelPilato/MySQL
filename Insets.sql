use hotelsaintgermain;

insert into Cliente
(Nome, Sexo, DtaNasc)
values
('Rafael Pilato', 'M', '2005-01-19');

insert into Cliente
(Nome, Sexo, DtaNasc)
values
('Will Saboya', 'M', '2002-08-25');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Jose Ricardo','M','1969-10-14');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Debora Santos','F','2000-05-20');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Luiza Princival','F','2005-06-12');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Jessica Cardoso','F','2003-04-16');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Jhon Week','M','1970-08-27');

insert into Cliente
(Nome, Sexo, DtaNasc)
value
('Anna Bers','F','2002-02-06');

insert into Telefone
(Numero, IdCliente)
value
('41991411354','1');

insert into Telefone
(Numero, IdCliente)
value
('41985632548','1');

insert into Telefone
(Numero, IdCliente)
value
('41995684236','2');

insert into Telefone
(Numero, IdCliente)
value
('41988556234','3');

insert into Telefone
(Numero, IdCliente)
value
('41995423654','4');

insert into Telefone
(Numero, IdCliente)
value
('41995428632','8');

insert into Telefone
(Numero, IdCliente)
value
('41995484524','8');

insert into Telefone
(Numero, IdCliente)
value
('41998532654','8');

insert into Telefone
(Numero, IdCliente)
value
('41996523215','4');

insert into Telefone
(Numero, IdCliente)
value
('11984556632','5');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('1','12434658944','111222333','Vila Nova','1725','Parana','Sao Jose dos Pinhais','83022400');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('2','55588876512','125987564','Faustino Sabota','125','Parana','Sao Jose dos Pinhais','88846526');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('3','15678945211','786542359','Comendador Franco','25','Sao Pualo','Itapecerica','11566489');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('4','56489756423','756423568','Joaquim Nabuco','698','Rio de Janeiro','Duque de Caxias','45625489');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('5','45625879556','789542365','Manoel Bastos','245','Santa Catarina','Blumenal','56489542');

insert into ClienteBrasileiro
(IdCliente, Cpf, Rg, Rua, Numero, Estado, Cidade, Cep)
value
('8','12564378965','784853365','Manoel Bastos','542','Santa Catarina','Blumenal','56489542');

insert into ClienteEstrangeiro
(IdCliente, Passaporte)
value
('6', '44785369');

insert into ClienteEstrangeiro
(IdCliente, Passaporte)
value
('7', '58694857');

insert into Quarto
(NroQuarto, Andar, Tipo, Descricao, VlrDiaria)
value
('1','1','Simples','Duas camas solteiro, um banheiro, frigobar','70.00');

insert into Quarto
(NroQuarto, Andar, Tipo, Descricao, VlrDiaria)
value
('101','2','Padrao','Uma cama de casal, duas de solteiro, frigobar, ar, um banheiro','100');

insert into Quarto
(NroQuarto, Andar, Tipo, Descricao, VlrDiaria)
value
('201','3','Suite','Cama de casal, dois banheiros, ar, frigobar, cozinha, sala.','200.00');

insert into Quarto
(NroQuarto, Andar, Tipo, Descricao, VlrDiaria)
value
('250','3','Suite','Uma cama de casal, uma cama de solteiro, ar, frigobar, dois banheiros, cozinha, sala.','250.00');

insert into Quarto
(NroQuarto, Andar, Tipo, Descricao, VlrDiaria)
value
('56','1','Simples','Duas camas de solteiro, frigobar, um banheiro','85.00');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('1','201','2023-09-29','3');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('2','56','2023-10-06','5');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('3','1','2023-10-05','2');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('5','101','2023-10-15','3');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('7','250','2023-12-10','30');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('5','250','2023-11-05 10:00:25','3');

insert into Reserva
(IdCliente, NroQuarto, Dta, Periodo)
value
('8','101','2023-11-05 10:00:25','2');

insert into Gerente
(MatriculaGerente, Nome)
value
('12345', 'Rafael Pilato');

insert into Gerente
(MatriculaGerente, Nome)
value
('54321', 'Lucas Daniel');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('1', '12345', '2023-09-28 10:00:00');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('2', '12345', '2023-09-28 10:03:00');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('3', '12345', '2023-09-28 10:05:00');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('4', '54321', '2023-09-28 10:07:00');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('5', '54321', '2023-09-28 10:09:00');

insert into Aprovacao
(NroReserva, MatriculaGerente, DtaHora)
value
('7', '54321', '2023-11-05 10:09:00');

insert into Ocupacao
(NroReserva, Entrada, Saida)
value
('1','2023-09-29 15:20:00','2023-10-01 13:30:00');

insert into Ocupacao
(NroReserva, Entrada, Saida)
value
('2','2023-10-06 08:45:00','2023-10-10 18:15:35');

insert into Ocupacao
(NroReserva, Entrada, Saida)
value
('3','2023-10-05 05:26:00','2023-10-06 18:45:00');

insert into Ocupacao
(NroReserva, Entrada, Saida)
value
('4','2023-10-15 18:05:00','2023-10-17 15:00:00');

insert into Ocupacao
(NroReserva, Entrada, Saida)
value
('7','2023-10-15 18:05:00','2023-10-16 16:00:00');

 insert into Restaurante
 (Prato, Preco)
 value
 ('Arroz','10.00');
 
 insert into Restaurante
 (Prato, Preco)
 value
 ('Feijao','8.00');
 
 insert into Restaurante
 (Prato, Preco)
 value
 ('Macarrao','11.00');
 
 insert into Restaurante
 (Prato, Preco)
 value
 ('cinnamon roll','20.00');
 
  insert into Restaurante
 (Prato, Preco)
 value
 ('Bife','16.00');
 
 insert into OcupacaoRestaurante
 (NroReserva, IdRestaurante, DtaHora, Quantidade)
 value
 ('1','5','2023-09-30 14:00:00','2');
 
 insert into OcupacaoRestaurante
 (NroReserva, IdRestaurante, DtaHora, Quantidade)
 value
 ('2','4','2023-10-07 13:30:00','3');
 
 insert into OcupacaoRestaurante
 (NroReserva, IdRestaurante, DtaHora, Quantidade)
 value
 ('3','3','2023-10-06 12:00:00','1');
 
 insert into OcupacaoRestaurante
 (NroReserva, IdRestaurante, DtaHora, Quantidade)
 value
 ('4','2','2023-10-15 11:30:45','2');
 
 insert into OcupacaoRestaurante
 (NroReserva, IdRestaurante, DtaHora, Quantidade)
 value
 ('4','1','2023-12-10 12:15:35','1');
 
 insert into Frigobar
 (Item, preco)
 value
 ('Coca','5.00');
 
 insert into Frigobar
 (Item, preco)
 value
 ('Suca','4.00');
 
 insert into Frigobar
 (Item, preco)
 value
 ('Cerveja','6.00');
 
 insert into Frigobar
 (Item, preco)
 value
 ('Vinho','20.00');
 
 insert into Frigobar
 (Item, preco)
 value
 ('Whisky','15.00');
 
 insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('5','1','2023-12-11 10:06:45','4');
 
  insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('4','5','2023-10-15 20:15:00','1');
 
  insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('1','2','2023-09-20 08:27:42','2');
 
 insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('1','2','2023-09-20 12:00:00','1');
 
  insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('2','4','2023-10-07 15:58:16','2');
 
  insert into OcupacaoFrigobar
 (NroReserva, IdFrigobar, DtaHora, Quantidade)
 value
 ('3','3','2023-10-07 13:26:23','4');
 
 insert into Massagem
 (Tipo, Preco)
 value
 ('Superior','50.00');
 
 insert into Massagem
 (Tipo, Preco)
 value
 ('Inferior','50.00');
 
  insert into Massagem
 (Tipo, Preco)
 value
 ('Completa','100.00');
 
insert into Massagem
 (Tipo, Preco)
 value
 ('Local','40.00');
 
insert into Massagem
 (Tipo, Preco)
 value
 ('Prolongada','90.00');
 
insert into OcupacaoMassagem
 (NroReserva, IdMassagem, DtaHora, Produtos)
 value
 ('1','3','2023-09-10 09:15:00','Hidratante');
 
 insert into OcupacaoMassagem
 (NroReserva, IdMassagem, DtaHora, Produtos)
 value
 ('2','5','2023-10-09 16:15:00','Creme');
 
insert into OcupacaoMassagem
 (NroReserva, IdMassagem, DtaHora, Produtos)
 value
 ('3','1','2023-10-05 21:00:00','Esfoliante');
 
 insert into OcupacaoMassagem
 (NroReserva, IdMassagem, DtaHora, Produtos)
 value
 ('4','4','2023-10-14 17:30:00','Ervas');
 
  insert into OcupacaoMassagem
 (NroReserva, IdMassagem, DtaHora, Produtos)
 value
 ('5','3','2023-12-22 16:30:12','Perfumes');
 
 insert into TipoPagamento
 (Descricao)
 value
 ('Dinheiro');
 
 insert into TipoPagamento
 (Descricao)
 value
 ('Debito');
 
 insert into TipoPagamento
 (Descricao)
 value
 ('Credito');
 
 insert into TipoPagamento
 (Descricao)
 value
 ('Pix');
 
 insert into TipoPagamento
 (Descricao)
 value
 ('Cheque');
 
 insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('1','5','2023-10-01 07:10:15','600.00');
 
  insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('7','5','2023-10-16 10:10:15','600.00');
 
 insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('2','4','2023-10-01 08:23:00','425.00');
 
 insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('3','3','2023-10-06 09:20:32','140.00');
 
 insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('4','2','2023-10-17 09:15:55','300.00');
 
 insert into PagamentoOcupacao
 (NroReserva, IdTipoPagamento, DtaHora, ValorTotal)
 value
 ('5','1','2024-01-08 10:42:00','7500.00');