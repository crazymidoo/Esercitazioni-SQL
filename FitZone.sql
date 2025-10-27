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