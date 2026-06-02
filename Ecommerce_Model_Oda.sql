
-- Modelo de criação de dados Ecommerce (Apenas dados ficticios).alter

create database if not exists EcommerceModel;

create table Cliente(
    ID_cliente int auto_increment primary key,
    id_pagamento int,
	username varchar(60),
    email varchar (45),
    senha varchar(32),
    create_time timestamp,
    endereço varchar (45),
    indentificação(CPF-RG-CNH) varchar(45) not null unique,
    telefone (45),
    método_pagamento(IDPagamento) foreign key id_pagamento references 
    

);

create table Método_Pagamento(
	id_pagamento int,
	update_time timestamp,
    nome_método varchar(45),
    Descrição varchar(45),
    configjson varchar(200),
    ordem_exibição int   

);

create table if not exists Pedido(
	create_time timestamp,
    update_time timestamp,
    Id_Pedido varchar(45),
    Estado enum('Em Andamento', 'Cancelado', 'Concluido', 'Iniciando')
    
);

create table Produto(
	id_produto int not null auto_increment,
    nome_produto varchar(45),
    Descrição varchar(45),
    Localizaçã varchar(45),
    Quantidade varchar(45)
);

create table Vendedor(
	username varchar(45),
    email varchar(45),
    password varchar(32),
    create_time timestamp,
    id_vendedor varchar(45) not null auto_increment primary key,
    CNPJ varchar(45) unique not null,
    Razão_Social varchar(45) unique not null,
    Endereço varchar(220)
);