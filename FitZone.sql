--Creazione Tabella Istruttore
Create Table Istruttore(
    Id_Istruttore Int Primary Key,
    Nome Varchar(20) Not Null,
    Cognome Varchar(20) Not Null,
    Specializzazione Varchar(30) Not Null
)

--Creazione Tabella Corso
Create Table Corso(
    Codice_Corso Int Primary Key,
    Nome Varchar(30),
    Descrizione Varchar(150)
)

--Creazione Tabella Iscrizione
Create Table Iscrizione(
    Codice_Iscrizione Int Primary Key,
    Data_Iscrizione Date Not Null,
    Quota Decimal Not Null
)

--Creazione Tabella Cliente
Create Table Cliente(
    Id_Cliente Int Primary Key,
    Nome Varchar(20) Not Null,
    Cognome Varchar(20) Not Null,
    Data_Nascita Date Not Null,
    Email Varchar(50) Not Null
)