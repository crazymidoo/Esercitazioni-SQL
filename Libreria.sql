--Creazione Tabella Libro
Create Table libro(
    Id_Libro Int Primary Key,
    Titolo Varchar(30) Not Null,
    Genere Varchar(20) Not Null,
    Prezzo Decimal Not Null
)

--Creazione Tabella Autore
Create Table Autore(
    Id_Autore Int Primary Key,
    Nome Varchar(20) Not Null,
    Cognome Varchar(20) Not Null,
    Data_Nascita Date Not null
)