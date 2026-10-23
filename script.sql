CREATE DATABASE feira_facil;
USE feira_facil;

create table clientes (
id_codigo int auto_increment primary key,
id_nome varchar (50),
id_cpf int,
id_email varchar (30),
id_telefone int
);

create table produto (
id_codigo int auto_increment primary key,
id_nome varchar (50),
id_descricao varchar (60),
id_preco decimal (10,2),
id_quantidade int
);

create table carrinho (
id_codigo int auto_increment primary key,
id_data date,
id_cliente int,
constraint foreign key (id_cliente) references clientes(id_codigo)
);

create table itens (
id_item int auto_increment primary key,
id_carrinho int,
id_produto int,
quantidade int,
constraint fk_carrinho foreign key (id_carrinho) references carrinho(id_codigo),
constraint fk_carrinho foreign key (id_produto) references produto(id_codigo)
);
