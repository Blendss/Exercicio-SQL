# Exercicio-SQL
problemas na chave estrangeira, não consigo resolver e adicionei a informação de forma manual



1. Faça a análise da situação abaixo:


Uma Empresa pode ter várias filiais e possui um CNPJ, razão social, data de abertura/início das atividades e ramo de atividade. Há várias empresas que fazem parte de um mesmo grupo empresarial.
Cada Filial de uma empresa precisa ter suas informações armazenadas, como código da filial, CNPJ, endereço, telefone e código da empresa a qual está vinculada e pode ter vários departamentos que devem ser registrados com nome, código e funcionário responsável. Um departamento de uma filial pode ter vários empregados.
Cada empregado deverá ter armazenado o nome, RG, CPF, data de nascimento, endereço, telefone, cargo e data de registro e poderá estar vinculado a uma filial e um departamento apenas uma vez. O salário bruto (horas trabalhadas * valor por hora) juntamente com a quantidade de horas trabalhadas e o valor recebido por hora pelo funcionário também deverá ser armazenado.

Considerando o cenário acima pede-se:

– Construir o modelo conceitual (MER), contendo: (1 ponto)

    - Entidades e seus atributos;
    - Relacionamentos;
    - Cardinalidade

- Construir o Diagrama de Entidades e Relacionamentos (DER), contendo: (1 ponto)

    - Tabelas e colunas;
    - Chave Primária de cada tabela;
    - Chaves Estrangeiras.

- Criar as tabelas e relacionamentos no banco de dados usando o MySQL Workbench. (1 ponto)

- Inserir ao menos 5 registros em cada tabela (0,5 pontos)

- Fazer uma consulta (SELECT) que mostre ordenado pelo salário o nome, RG, CPF, salário bruto, nome da empresa a qual tem vínculo e o nome do departamento dos funcionários cadastrados. (0,5 pontos)

- Fazer uma consulta (SELECT) que mostre todos os funcionários vinculados a um departamento específico (0,5 pontos) 

- Fazer uma consulta (SELECT) de todos os funcionários vinculados a uma filial específica. (0,5 pontos)




2- Faça a análise da situação abaixo:

Um berçário deseja informatizar suas operações. Quando um bebê nasce, algumas informações são armazenadas sobre ele, tais como: nome, data do nascimento, peso do nascimento, altura, a mãe deste bebê e o médico que fez seu parto. Para as mães, o berçário também deseja manter um controle, guardando informações como: nome, endereço, telefone e data de nascimento. Para os médicos, é importante saber: CRM, nome, telefone celular e especialidade.

Considerando o cenário acima pede-se:

– Construir o modelo conceitual (MER), contendo: (1 ponto)

    - Entidades e seus atributos;
    - Relacionamentos;
    - Cardinalidade.

- Construir o Diagrama de Entidades e Relacionamentos (DER), contendo: (1 ponto)

    - Tabelas e colunas;
    - Chave Primária de cada tabela;
    - Chaves Estrangeiras.

- Criar as tabelas e relacionamentos no banco de dados usando o MySQL Workbench. (1 ponto)

- Inserir ao menos 5 registros em cada tabela (0,5 pontos)

- Fazer uma consulta que mostre ordenado pela data do nascimento o nome e o peso do bebê e o nome da mãe e do médico. (0,5 pontos)

- Fazer uma consulta que mostre todos os bebês que nasceram com acompanhamento do mesmo médico (0,5 pontos)

- Fazer uma consulta de todos os bebês que possuem peso inferior a 3kg. (0,5 pontos)
