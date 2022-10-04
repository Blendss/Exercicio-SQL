create database prova;
use prova;

create table empresa (
cnpj varchar(20),
ramo_ativ VARCHAR(35),
data_Abert date,
razao_social VARCHAR(35)
);

create table filial (
cod_filial int(3),
cnpj varchar(20),
endereço VARCHAR(50),
telefone varchar(14),
cod_empresa int(7)
);

create table departamento (
cod bigint,
nome_dep varchar(35),
funci_resp varchar(35)
);

create table empregados(
nome varchar(40) primary key ,
data_nasc date,
rg varchar(12),
endereço varchar(50),
cpf varchar(14),
tel varchar(14),
data_reg date,
cargo varchar(30),
valor_hr decimal(10),
sal_bruto decimal(10,2),
hr_trab time
);

insert into empresa (cnpj, ramo_ativ, data_abert, razao_social) values ("33.777.651/0001-41", "Vendas", "2012-02-02", "Upbeat Cadernos");
insert into empresa (cnpj, ramo_ativ, data_abert, razao_social) values ("66.656.432/0001-63", "Produção", "2001-01-01", "EdgeWater Lapis");
insert into empresa (cnpj, ramo_ativ, data_abert, razao_social) values ("04.606.088/0001-40", "Produção", "2013-03-03", "Silicio Saleiro");
insert into empresa (cnpj, ramo_ativ, data_abert, razao_social) values ("81.299.739/0001-48", "Vendas", "2004-04-04", "Arroz Dock");
insert into empresa (cnpj, ramo_ativ, data_abert, razao_social) values ("30.728.805/0001-17", "Vendas", "2017-12-02", "Hmm Truques");

insert into filial (cod_filial, cnpj, endereço, telefone, cod_empresa) values ("088767", "72.662.768/0001-31", "Rua Doutor Alfredo de Carvalho Pinto", "(82) 3752-0280", "8799789");
insert into filial (cod_filial, cnpj, endereço, telefone, cod_empresa) values ("900923", "38.352.507/0001-87", "Avenida Capitão Joaquim Rabelo Andrade", "(93) 2358-6396", "8817948");
insert into filial (cod_filial, cnpj, endereço, telefone, cod_empresa) values ("565378", "78.217.541/0001-63", "Rua Doutor Benedito Alexandre Trindade Filho", "(68) 2338-5107", "0915764");
insert into filial (cod_filial, cnpj, endereço, telefone, cod_empresa) values ("101892", "37.263.386/0001-34", "Rua Francisco Fusari", "(79) 2322-3527", "7090459");
insert into filial (cod_filial, cnpj, endereço, telefone, cod_empresa) values ("374649", "53.978.658/0001-39", "Praça Antônio Prado", "(79) 3495-1622", "3178522");

insert into departamento (cod, nome_dep, funci_resp) values ("0011","limpeza","jose carlos");
insert into departamento (cod, nome_dep, funci_resp) values ("0013","informatica","richardson kennedy luz");
insert into departamento (cod, nome_dep, funci_resp) values ("0014","saude","paulo muzy");
insert into departamento (cod, nome_dep, funci_resp) values ("0018","mecanico","jose carlos adalberto");
insert into departamento (cod, nome_dep, funci_resp) values ("0023","gestao","carlos magno");

insert into empregados (nome, data_nasc, rg, endereço, cpf, tel, data_reg, cargo, valor_hr, sal_bruto, hr_trab) values ("Clementina Borges", "2001-08-17", "36.504.365-5", "Rua Alameda Alcantara", "335.867.940-37", "(83) 3043-8458", "2022-09-21", "estagiário", "5.50", "1212.00", "50:42");
insert into empregados (nome, data_nasc, rg, endereço, cpf, tel, data_reg, cargo, valor_hr, sal_bruto, hr_trab) values ("Jorge Antônio", "1978-01-01", "27.455.853-1", "Rua Antonio Carlos Peres", "068.957.070-85", "(99) 2026-8674", "2010-10-11", "faxineiro", "20.48", "3550.00", "51:00");
insert into empregados (nome, data_nasc, rg, endereço, cpf, tel, data_reg, cargo, valor_hr, sal_bruto, hr_trab) values ("Jorge Adalberto", "1980-10-02", "35.878.216-8", "Rua Julio Balestrin Peres", "950.613.460-09", "(55) 2214-8110", "2010-11-10", "faxineiro", "20.48", "3550.00", "51:00");
insert into empregados (nome, data_nasc, rg, endereço, cpf, tel, data_reg, cargo, valor_hr, sal_bruto, hr_trab) values ("Carlos Alberto de Nobrega", "1936-01-01", "44.165.329-7", "Rua Renato Cariani", "192.036.210-08", "(55) 2214-8110", "2008-02-22", "comediante", "31.15", "5400.00", "40:00");
insert into empregados (nome, data_nasc, rg, endereço, cpf, tel, data_reg, cargo, valor_hr, sal_bruto, hr_trab) values ("Paulo Muzy", "1979-03-08", "38.362.231-1", "Rua Ednaldo Pereira", "795.776.370-78", "(96) 2377-4572", "2013-07-26", "Médico", "173.08", "30000.00", "40:00");

select * from empregados, empresa, departamento, filial
order by nome, rg, cpf, sal_bruto, razao_social;

select  funci_resp, nome_dep from departamento;

alter table filial  add fk_nome varchar(40);

/*alter table filial
add foreign key (fk_nome)
references empregados(nome);

tentei fazer desse jeito acima  e não consegui professor assinado: Rubens*/

insert into filial (fk_nome) values ("Clementina Borges");
insert into filial (fk_nome) values ("Jorge Antônio");
insert into filial (fk_nome) values ("Jorge Adalberto");
insert into filial (fk_nome) values ("Carlos Alberto de Nobrega");
insert into filial (fk_nome) values ("Paulo Muzy");

select fk_nome from filial
