create database prova2;
use prova2;

CREATE TABLE Berçario (
  nome_bebe VARCHAR (20),
  data_nasc Date,
  peso_Nasc decimal (10),
  altura decimal (10,2),
  mãe VARCHAR (20),
  médico VARCHAR (20)
  );
  
  INSERT into Berçario (nome_bebe,	data_nasc, peso_nasc, altura, Mãe, Médico) VALUES ("Carlos Danin", "2001-02-28", "2.7", "0.45", "Miranda Danin", "Paulo Muzy");
  INSERT into Berçario (nome_bebe,	data_nasc, peso_nasc, altura, Mãe, Médico) VALUES ("Pedro Henrique", "2000-02-28", "3.0", "0.50", "Emanuelly Raquel", "Sergio Cavalo");
  INSERT into Berçario (nome_bebe,	data_nasc, peso_nasc, altura, Mãe, Médico) VALUES ("Silene Vaz", "2002-02-28", "3.6", "0.53", "Sabrina Vaz", "Thiago Toguro");
  INSERT into Berçario (nome_bebe,	data_nasc, peso_nasc, altura, Mãe, Médico) VALUES ("Antenor da Cunha", "2003-02-28", "2.5", "0.43", "Gabriele da Cunha", "Giga Alien");
  INSERT into Berçario (nome_bebe,	data_nasc, peso_nasc, altura, Mãe, Médico) VALUES ("Geovani Silva", "2004-02-28", "3.0", "0.46", "Juliana Silva", "Léo Stronda");
  
CREATE TABLE Mãe (
  Nome_mae VARCHAR (20),
  Endereço VARCHAR (30),
  Telefone varchar(14),
  Data_Nasc_mae date
  );
  
  INSERT INTO Mãe (nome_mae, endereço, telefone, data_nasc_mae) VALUES ("Miranda Danin", "Rua dos sem carros", "(67) 3584-7151", "1976-03-12");
  INSERT INTO Mãe (nome_mae, endereço, telefone, data_nasc_mae) VALUES ("Emanuelly Raquel", "Rua picolé amassado", "(97) 2250-8466", "1985-01-17");
  INSERT INTO Mãe (nome_mae, endereço, telefone, data_nasc_mae) VALUES ("Sabrina Vaz", "Rua Roberto Justos rico", "(66) 2623-6234", "1980-10-22");
  INSERT INTO Mãe (nome_mae, endereço, telefone, data_nasc_mae) VALUES ("Gabriele da Cunha", "Rua Bora BILL", "(79) 3600-5116", "1960-04-24");
  INSERT INTO Mãe (nome_mae, endereço, telefone, data_nasc_mae) VALUES ("Juliana Silva", "Rua Bora FIH do BILL", "(69) 3949-8149", "1979-09-13");
  
CREATE TABLE Médico (
  Nome_med VARCHAR (20),
  CRM varchar(20),
  Telefone Varchar(14),
  Especialidade VARCHAR (30)
  );
  
  INSERT into Médico (nome_med, crm, telefone, especialidade) VALUES ("Paulo Muzy", "CRM/SP 123456", "(47) 2053-4637", "Fisioterapeuta");
  iNSERT into Médico (nome_med, crm, telefone, especialidade) VALUES ("Sergio Cavalo", "CRM/SP 654321", "(71) 2654-6678", "Pediatra");
  iNSERT into Médico (nome_med, crm, telefone, especialidade) VALUES ("Thiago Toguro", "CRM/SP 256987", "(47) 2053-4637", "Parteiro");
  iNSERT into Médico (nome_med, crm, telefone, especialidade) VALUES ("Giga Alien", "CRM/SP 093742", "(82) 2424-1793", "Clinico Geral");
  iNSERT into Médico (nome_med, crm, telefone, especialidade) VALUES ("Léo Stronda", "CRM/SP 749354", "(65) 3234-5266", "Pediatra");
  
select * from  berçario, mãe, médico
order by  nome_bebe, data_nasc, peso_nasc;

select * from berçario, médico
order by médico;

select * from berçario 
where peso_nasc <= 2.9;




