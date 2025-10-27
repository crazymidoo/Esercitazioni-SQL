--Creazione Tabella Autore
Create Table Autore(
    Id_Autore Int Primary Key,
    Nome Varchar(20) Not Null,
    Cognome Varchar(20) Not Null,
    Data_Nascita Date Not null
);

--Creazione Tabella Cliente
Create Table Cliente(
    Id_Cliente Int Primary Key,
    Nome Varchar(20) Not Null,
    Cognome Varchar(20) Not Null,
    Email Varchar(50) Not Null
);

--Creazione Tabella Ordine
Create Table Ordine(
    Id_ordine Int Primary Key,
    Data_Ordine Date Not Null,
    Totale Int Not Null,
    Codice_Cliente Int,
    Foreign Key (Codice_Cliente) References Cliente(Id_Cliente)
);

--Creazione Tabella Libro
Create Table Libro(
    Id_Libro Int Primary Key,
    Titolo Varchar(30) Not Null,
    Genere Varchar(20) Not Null,
    Prezzo Decimal Not Null,
    Codice_Autore Int,
    Codice_Ordine Int,
    Foreign Key (Codice_Autore) References Autore(Id_Autore),
    Foreign Key (Codice_Ordine) References Ordine(Id_ordine)
);