--Creazione Tabella Artista
Create Table Artista(
    Codice_Artista Int Primary Key,
    Nome_Arte Varchar(40) Not Null,
    Nazionalita Varchar(40) Not Null,
    Genere_Musicale Varchar(40) Not Null,
    Codice_Spettacolo Int,
    Foreign Key (Codice_Spettacolo) 
    References Spettacolo (Codice_Spettacolo)
);

--Creazione Tabella Spettacolo
Create Table Spettacolo(
    Codice_Spettacolo Int Primary Key,
    Data Date Not Null,
    Orario_Inizio Time Not Null,
    Durata Int Not Null,
    Codice_Palco Int,
    Codice_Biglietto Int,
    Foreign Key (Codice_Palco)
    References Palco (Codice_Palco),
    --Foreign Key con Biglietto
    Foreign Key (Codice_Biglietto)
    References Biglietto(Codice_Biglietto)
);

--Creazione Tabella Palco
Create Table Palco(
    Codice_Palco Int Primary Key,
    Nome Varchar(40) Not Null,
    Capienza_Massima Int Not Null
);

--Creazione Tabella Biglietto
Create Table Biglietto(
    Codice_Biglietto Int Primary Key,
    Prezzo Int Not Null,
    Tipo Varchar(40) Not Null,
    Validita Date Not Null,
    Codice_Cliente Int,
    Foreign Key (Codice_Cliente)
    References Clienti (Codice_Fiscale)
);

--Creazione Tabella Clienti
Create Table Clienti(
    Codice_Fiscale Varchar(16) Primary Key,
    Nome Varchar(40) Not Null,
    Cognome Varchar(40) Not Null,
    Email Varchar(50) Not Null
);

--Creazione Tabella Acquista(Relazione)
Create Table Acquisto(
    Codice_Acquisto Int Primary Key,
    Numero_Biglietti Int Not Null,
    Data_Acquisto date Not Null
)--Questo Commento