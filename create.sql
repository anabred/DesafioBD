create database oficina;
use oficina;

-- Criando tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
	Nome varchar(45) null,
    CPF varchar(11) null,
    Endereço varchar (200),
    Telefone char (11)
);

create table veiculo(
	idVeiculo int auto_increment primary key,
    Modelo varchar (15),
    Placa char (6) unique,
    Ano char (4),
    constraint fk_veiculo_cliente foreign key (idVeiculo) references cliente(idCliente)
);

create table ordemServico(
	idOS int auto_increment primary key,
    statusOs varchar (20),
    numeroOS varchar (20) not null unique,
    emissaoOS date,
    entregaOs date,
    valorOs float not null,
    peçasOS varchar (15),
    autoCliente boolean default true,
    constraint fk_os_cliente foreign key (idOS) references cliente (idCliente)    
);

create table peca(
	idPeca int primary key,
    nomePeca varchar (45) not null,
    fabricantePeca varchar (45),
    valorPeca float not null
    );

create table mecanico(
	idMecanico int primary key 	auto_increment,
    enderecoMec varchar (200),
    especialidadeMec varchar (100),
    codigoMec varchar (30) not null,
    nomeMec varchar (100) not null
    );

create table servico(
	idServico int primary key auto_increment,
    tipoServico varchar (45),
    valorServico float not null
);

create table definicaoServico(
	idDefServ int,
    servOS int,
    tempoServ date,
    primary key (idDefServ, servOs),
    constraint fk_definicaoServico_servico foreign key (idDefServ) references servico(idServico),
    constraint fk_definicaoServico_os foreign key (servOs) references ordemServico(idOS)
);

create table equipemec(
	idEquipeMec int,
    idEquipeOs int,
    primary key (idEquipeMec, idequipeOS),
    constraint fk_equipe_mecanico foreign key (idEquipeMec) references mecanico(idMecanico),
    constraint fk_equipe_os foreign key (idEquipeOs) references ordemServico (idOS)
    );
    
create table ospecas(
	idOsPecas int,
    pecaIdPeca int,
    primary key (idOsPecas, pecaIdPeca),
    constraint fk_ospecas_os foreign key (idOsPecas) references ordemServico(idOS),
    constraint fk_ospecas_peca foreign key (idOsPecas) references peca (idPeca)
);