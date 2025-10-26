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
)

-- ======================================
-- Popolamento tabella Clienti
-- ======================================
INSERT INTO Clienti (Codice_Fiscale, Nome, Cognome, Email) VALUES
('RSSMRA85M01H501Z', 'Mario', 'Rossi', 'mario.rossi@email.com'),
('BNCLGI90B12F205X', 'Lucia', 'Bianchi', 'lucia.bianchi@email.com'),
('VRDLNZ80C23D219Y', 'Alessandro', 'Verdi', 'alessandro.verdi@email.com');

-- ======================================
-- Popolamento tabella Palco
-- ======================================
INSERT INTO Palco (Codice_Palco, Nome, Capienza_Massima) VALUES
(1, 'Palco Centrale', 5000),
(2, 'Palco Laterale', 2000);

-- ======================================
-- Popolamento tabella Biglietto
-- ======================================
INSERT INTO Biglietto (Codice_Biglietto, Prezzo, Tipo, Validita, Codice_Cliente) VALUES
(1, 50, 'Standard', '2025-12-01', 'RSSMRA85M01H501Z'),
(2, 100, 'VIP', '2025-12-01', 'BNCLGI90B12F205X'),
(3, 75, 'Premium', '2025-12-01', 'VRDLNZ80C23D219Y');

-- ======================================
-- Popolamento tabella Spettacolo
-- ======================================
INSERT INTO Spettacolo (Codice_Spettacolo, Data, Orario_Inizio, Durata, Codice_Palco, Codice_Biglietto) VALUES
(1, '2025-12-01', '20:00', 120, 1, 1),
(2, '2025-12-02', '18:30', 90, 2, 2);

-- ======================================
-- Popolamento tabella Artista
-- ======================================
INSERT INTO Artista (Codice_Artista, Nome_Arte, Nazionalita, Genere_Musicale, Codice_Spettacolo) VALUES
(1, 'DJ Rossi', 'Italiana', 'EDM', 1),
(2, 'Lucia Star', 'Italiana', 'Pop', 2);

-- ======================================
-- Popolamento tabella Acquisto
-- ======================================
INSERT INTO Acquisto (Codice_Acquisto, Numero_Biglietti, Data_Acquisto) VALUES
(1, 2, '2025-11-01'),
(2, 1, '2025-11-03');



Select Nome_Arte, Nazionalita
From Artista
Where Genere_Musicale = 'Rock';

Select Data, Orario_Inizio
From Spettacolo S
Join Palco P on S.Codice_Palco = P.Codice_Palco
Where P.Nome = 'Main Stage';
