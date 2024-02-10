CREATE DATABASE HotelSaintGermain;
USE HotelSaintGermain;

		create table Cliente(
			IdCliente int primary key auto_increment,
			Nome varchar(100) not null,
			Sexo varchar(1),
			DtaNasc datetime not null
		);


		create table Telefone(
			Numero varchar(20),
			IdCliente int,
			primary key (Numero, IdCliente), 
			foreign key(IdCliente)
				references Cliente(IdCliente)
		);

		create table ClienteBrasileiro(
			IdCliente int,
			Cpf numeric(11) not null unique,
			Rg numeric(9) unique,
			Rua varchar(50) not null,
			Numero int not null,
			Cidade varchar(50) not null,
			Estado varchar(50) not null,
			Cep numeric(10),
			primary key (IdCliente),
			foreign key(idCliente)
				references Cliente(IdCliente)
		);

		create table ClienteEstrangeiro(
			IdCliente int,
			Passaporte varchar(8) not null unique,
			primary key(IdCliente),
			foreign key(IdCliente)
				references Cliente(IdCliente)
		);
		
		create table Quarto(
			NroQuarto int primary key,
			Andar int not null,
			Tipo varchar(100) not null,
			Descricao varchar(250),
			VlrDiaria decimal(5,2) not null
		);
		
        create table Reserva(
			NroReserva int primary key auto_increment,
            IdCliente int,
            NroQuarto int,
            Dta datetime not null,
            Periodo tinyint not null,
            foreign key (IdCliente)
				references Cliente(IdCliente),
			foreign key (NroQuarto)
				references Quarto(NroQuarto)
        );
        
        create table Gerente(
			MatriculaGerente int primary key unique not null,
            Nome varchar(100) not null
        );
        
        create table Aprovacao(
			NroReserva int,
            MatriculaGerente int,
            DtaHora datetime not null,
            primary key(NroReserva),
            foreign key (NroReserva)
				references Reserva (NroReserva),
			foreign key(MatriculaGerente)
				references Gerente (MatriculaGerente)
        );
        
        create table Ocupacao(
			NroReserva int,
            Entrada datetime not null,
            Saida datetime not null,
            primary key(NroReserva),
            foreign key(NroReserva)
				references Reserva (NroReserva)
		);
        
        create table Restaurante(
			IdRestaurante int primary key auto_increment,
            Prato varchar(50) not null,
            Preco decimal(5,2) not null
        );
        
        create table OcupacaoRestaurante(
			NroReserva int,
            IdRestaurante int,
            DtaHora datetime primary key not null,
            Quantidade int not null,
            foreign key(NroReserva)
				references Reserva (NroReserva),
            foreign key (IdRestaurante)
				references Restaurante (IdRestaurante)
        );
        
        create table Frigobar(
			IdFrigobar int primary key auto_increment,
            Item varchar(50) not null,
            Preco decimal(5,2) not null
        );
        
        create table OcupacaoFrigobar(
			NroReserva int,
            IdFrigobar int,
            DtaHora datetime primary key not null,
            Quantidade int not null,
            foreign key(NroReserva)
				references Reserva (NroReserva),
            foreign key (IdFrigobar)
				references Frigobar (IdFrigobar)
        );
        
        create table Massagem(
			IdMassagem int primary key auto_increment,
            Tipo varchar(50) not null,
            Preco decimal(5,2) not null
        );
        
        create table OcupacaoMassagem(
			NroReserva int,
            IdMassagem int,
            DtaHora datetime primary key not null,
            Produtos varchar(50) not null,
            foreign key(NroReserva)
				references Reserva (NroReserva),
            foreign key (IdMassagem)
				references Massagem (IdMassagem)
        );
        
        create table TipoPagamento(
			IdTipoPagamento int primary key auto_increment,
            Descricao varchar(50) not null
        );
        
        create table PagamentoOcupacao (
			NroReserva int,
            IdTipoPagamento int,
            DtaHora datetime,
            ValorTotal decimal(7,2) not null,
            primary key(NroReserva),
            foreign key(NroReserva)
				references Reserva (NroReserva),
			foreign key(IdTipoPagamento)
				references TipoPagamento(IdTipoPagamento)
        );
        
        
        
        
        
			
