### Parte 1

Criou-se uma base de dados chamada database1.db tal como pedido no enunciado.

## Criar Tabela

Criar uma tabela chamada "contacts" com:
    - firstname (TEXT)
    - middlename (TEXT)
    - lastname (TEXT)
    - email (TEXT)
    - phone (TEXT)
```sql
CREATE TABLE contacts (
    firstname TEXT,
    middlename TEXT,
    lastname TEXT,
    email TEXT,
    phone TEXT
);
```

## Eliminar Tabela

```sql
DROP TABLE nome_da_tabela;
```

## Comandos Especificos Sqlite3

Ver todas as tabelas criadas:
```sqlite
.tables
```
Sair do prompt do sqlite:
```sqlite
.quit
```

## Inserir Dados

Inserir todos dados na tabela:
```sql
INSERT INTO contacts VALUES ("João", "Manuel", "Fonseca", "jmf@gmail.com", "912345654");
INSERT INTO contacts VALUES ("Pedro", "Albuquerque", "Silva", "pedro23@gmail.com", "932454349");
INSERT INTO contacts VALUES ("Maria", "Carreira", "Dinis", "mariadi@ua.pt", "234958673");
INSERT INTO contacts VALUES ("Catarina", "Alexandra", "Rodrigo", "calexro@sapo.pt", "963343386");
```

## Ver Dados da Tabela

Ver todos os dados da tabela:
```sql
SELECT * FROM contacts;
```
Ver apenas algumas colunas ou linhas:
```sql
SELECT email,phone FROM contacts WHERE firstname="Pedro";
SELECT * FROM contacts WHERE firstname="Maria";
```

Com ordenação:
```sql
SELECT * FROM contacts ORDER BY firstname ASC;
SELECT * FROM contacts ORDER BY firstname DESC;
SELECT email,phone FROM contacts WHERE firstname="Pedro" ORDER BY firstname ASC;
SELECT * FROM contacts WHERE firstname="Maria" ORDER BY firstname ASC;
```

## Alterar Dados

Alterar o telemovel de um dado:
```sql
UPDATE contacts SET phone = 912345653 WHERE email="jmf@gmail.com";
```
Tem de se ter em consideração que o comando UPDATE altera todas as linhas, excepto se for especificada uma regra que restrinja o número de linhas a considerar. Neste caso isto é feito usando WHERE email="jmf@gmail.com".
```sql
UPDATE contacts SET lastname = "Sousa" WHERE phone="963343386";
```

## Apagar Dados

Apagar todos os dados da tabela:
```sql
DELETE FROM contacts;
```
Apagar uma linha específica:
```sql
DELETE FROM contacts WHERE phone = 912345653;
```
## Criar Outra Tabela

Criar outra tabela chamada "companies" com:
    - name (TEXT)
    - address (TEXT)
    - vatnumber (TEXT)
```sql
CREATE TABLE companies (
    name TEXT,
    address TEXT,
    vatnumber TEXT
);
```

### Parte 2

Criou-se outra base de dados chamada database2.db tal como sugerido no enunciado.

## Criar Tabelas

Contactos:
```sql
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT,
    middlename TEXT,
    lastname TEXT,
    email TEXT,
    phone TEXT,
    company_id INTEGER
);
```
Companhias:
```sql
CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    address TEXT,
    vatnumber TEXT
);
```

## Inserir Dados

Inserir todos dados nas tabelas:
```sql
INSERT INTO contacts (firstname, middlename, lastname, email, phone, company_id) VALUES ("João", "Manuel", "Fonseca", "jmf@gmail.com", "912345654", 3);
INSERT INTO contacts (firstname, middlename, lastname, email, phone, company_id) VALUES ("Pedro", "Albuquerque", "Silva", "pedro23@gmail.com", "932454349", 2);
INSERT INTO contacts (firstname, middlename, lastname, email, phone, company_id) VALUES ("Maria", "Carreira", "Dinis", "mariadi@ua.pt", "234958673", 1);
INSERT INTO contacts (firstname, middlename, lastname, email, phone, company_id) VALUES ("Catarina", "Alexandra", "Rodrigo", "calexro@sapo.pt", "963343386", 1);
INSERT INTO companies (name, address, vatnumber) VALUES ("MaxiPlano", "Aveiro", "123123123123");
INSERT INTO companies (name, address, vatnumber) VALUES ("Luis Manuel & filhos", "Águeda", "54534343435");
INSERT INTO companies (name, address, vatnumber) VALUES ("ProDesign", "Porto", "54534343435");
```