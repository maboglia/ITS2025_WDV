-- # Tabelle per esercitazione ESE



-- **1. Tabella `prodotti`**



-- Rappresenta i prodotti disponibili.



CREATE TABLE prodotti (

    codice_prodotto VARCHAR(10) PRIMARY KEY,       -- Codice prodotto

    nome_prodotto VARCHAR(100) NOT NULL,        -- Nome del prodotto

    colore VARCHAR(50),                 -- colore del prodotto

    taglia VARCHAR(10),                 -- taglia del prodotto

    magazzino VARCHAR(10)               -- Codice magazzino

);



-- ------------------------------------

-- **2. Tabella `fornitori`**



-- Contiene informazioni sui fornitori.



CREATE TABLE fornitori (

    codice_fornitore VARCHAR(10) PRIMARY KEY,       -- Codice fornitore

    nome_fornitore VARCHAR(100) NOT NULL,        -- Nome del fornitore

    numero_soci INT,                          -- Numero di soci

    sede VARCHAR(100)                   -- Sede del fornitore

);



-- ------------------------------------

-- **3. Tabella `clienti`**



-- Raccoglie i dettagli dei clienti.



CREATE TABLE clienti (

    codice_cliente VARCHAR(10) PRIMARY KEY, -- Codice cliente

    Nome VARCHAR(100) NOT NULL,         -- Nome del cliente

    Email VARCHAR(100),                 -- Email del cliente

    data_registrazione DATE DEFAULT (CURRENT_DATE) -- Data di registrazione

);



-- ------------------------------------

-- **4. Tabella `prodotti_archivio`**



-- Archivia i prodotti obsoleti o meno utilizzati.



CREATE TABLE prodotti_archivio (

    codice_prodotto VARCHAR(10) PRIMARY KEY,       -- Codice prodotto

    nome_prodotto VARCHAR(100) NOT NULL,        -- Nome del prodotto

    colore VARCHAR(50),                 -- colore del prodotto

    taglia VARCHAR(10)                  -- taglia del prodotto

);



-- ------------------------------------

-- **5. Tabella `ordini`**



-- Memorizza gli ordini dei clienti.



CREATE TABLE ordini (

    codice_ordine VARCHAR(10) PRIMARY KEY,  -- Codice ordine

    codice_cliente VARCHAR(10) NOT NULL,    -- Codice cliente

    data_ordine DATE NOT NULL,           -- Data dell'ordine

    FOREIGN KEY (codice_cliente) REFERENCES clienti(codice_cliente)

);



-- ------------------------------------

-- **6. Tabella `vendite`**



-- Registra le vendite dei prodotti.



CREATE TABLE vendite (

    codice_vendita VARCHAR(10) PRIMARY KEY, -- Codice vendita

    codice_prodotto VARCHAR(10) NOT NULL,  -- Codice prodotto

    Quantita INT NOT NULL,             -- Quantità venduta

    PrezzoUnitario DECIMAL(10, 2),     -- Prezzo per unità

    Totale DECIMAL(10, 2),             -- Totale della vendita

    FOREIGN KEY (codice_prodotto) REFERENCES prodotti(codice_prodotto)

);



-- ------------------------------------

-- **7. Tabella `fornitori_prodotti`**



-- Gestisce l'associazione tra fornitori e prodotti.



CREATE TABLE fornitori_prodotti (

    codice_fornitore VARCHAR(10) NOT NULL,          -- Codice fornitore

    codice_prodotto VARCHAR(10) NOT NULL,          -- Codice prodotto

    Qta INT NOT NULL,                   -- Quantità fornita

    PRIMARY KEY (codice_fornitore, codice_prodotto),           -- Chiave primaria composita

    FOREIGN KEY (codice_fornitore) REFERENCES fornitori(codice_fornitore),

    FOREIGN KEY (codice_prodotto) REFERENCES prodotti(codice_prodotto)

);



-- ------------------------------------

-- **8. Tabella `ordini_temp`**



-- Una tabella temporanea per gestire dati prima di inserirli in `ordini`.



CREATE TABLE ordini_temp (

    codice_ordine VARCHAR(10) PRIMARY KEY,  -- Codice ordine temporaneo

    codice_cliente VARCHAR(10) NOT NULL,    -- Codice cliente

    data_ordine DATE NOT NULL            -- Data dell'ordine

);



-- ------------------------------------

-- Dopo aver creato la struttura delle tabelle, esercitati con le principali operazioni `DML`



-- ------------------------------------



-- # Esercizi di INSERT

--



-- -- ------------------------------------



-- -- ------------------------------------



-- Esegui 10 esercizi di `INSERT` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- **1. Inserire un singolo record**

-- Inserire un prodotto nella tabella `Prodotti`:



-- ------------------------------------

-- **2. Inserire più record in una sola istruzione**

-- Inserire più fornitori nella tabella `Fornitori`:



-- ------------------------------------

-- **3. Inserire un record parziale**

-- Inserire un cliente con alcuni campi lasciati nulli:



-- -- ------------------------------------

-- -- **4. Inserire un record calcolato da un'altra tabella**

-- Copiare un prodotto dalla tabella `Prodotti` alla tabella `ProdottiArchivio`:



-- -- ------------------------------------

-- -- **5. Inserire una riga con una sottoquery**

-- Inserire un ordine per il cliente più recente:



-- -- ------------------------------------

-- -- **6. Inserire un record con valori default**

-- Inserire un fornitore con i valori predefiniti per alcuni campi:



-- -- ------------------------------------

-- -- **7. Inserire dati con valori calcolati**

-- Inserire un record nella tabella `Vendite` calcolando il totale:



-- -- ------------------------------------

-- -- **8. Inserire dati duplicati con modifiche**

-- Duplicare un prodotto con un nuovo codice e colore:



-- -- ------------------------------------

-- -- **9. Inserire dati nella tabella di associazione**

-- Aggiungere una relazione tra fornitori e prodotti:



-- -- ------------------------------------

-- -- **10. Inserire dati provenienti da una tabella di log**

-- Inserire tutti i record da una tabella temporanea a una tabella definitiva:



-- -- ------------------------------------



-- # Esercizi di UPDATE

--



-- -- ------------------------------------



-- -- ------------------------------------



-- Esegui 10 esercizi di `UPDATE` in SQL per esercitarsi con la sintassi e i concetti.



-- -- ------------------------------------

-- -- **1. Aggiornare il colore dei prodotti con il codice "P001" in "rosso"**



-- ------------------------------------

-- **2. Incrementare il numero di soci di tutti i fornitori con sede a "Milano" di 2**



-- ------------------------------------

-- **3. Aggiornare il magazzino del prodotto "P002" a "MZ002"**



-- ------------------------------------

-- **4. Ridurre del 10% la quantità disponibile per tutti i prodotti forniti da "F001"**



-- ------------------------------------

-- **5. Impostare il colore dei prodotti senza un colore definito a "bianco"**



-- ------------------------------------

-- **6. Cambiare l'indirizzo di tutti i fornitori con codice "F002" in "Via Roma, 10"**



-- ------------------------------------

-- **7. Impostare la quantità a 0 per i prodotti mai forniti da alcun fornitore**



-- ------------------------------------

-- **8. Aggiornare la sede dei fornitori con meno di 3 soci a "Sede Sconosciuta"**



-- ------------------------------------

-- **9. Cambiare la taglia di tutti i prodotti di colore "verde" a "L"**



-- ------------------------------------

-- **10. Aggiornare il nome dei fornitori che hanno fornito almeno un prodotto con quantità superiore a 100 in "Fornitore Premium"**



-- ------------------------------------



-- # Esercizi di DELETE



-- -- ------------------------------------



-- -- ------------------------------------



-- Esegui 10 esercizi di `DELETE` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- **1. Eliminare i prodotti con magazzino "MZ003"**



-- ------------------------------------

-- **2. Rimuovere tutti i fornitori con sede a "Napoli"**



-- ------------------------------------

-- **3. Eliminare tutte le relazioni prodotto-fornitore per il prodotto con codice "P004"**



-- ------------------------------------

-- **4. Rimuovere tutti i prodotti con colore "nero"**



-- ------------------------------------

-- **5. Eliminare tutti i fornitori con meno di 5 soci**



-- ------------------------------------

-- **6. Eliminare le relazioni prodotto-fornitore per i fornitori con codice "F003"**



-- ------------------------------------

-- **7. Eliminare tutti i prodotti mai forniti da alcun fornitore**



-- ------------------------------------

-- **8. Rimuovere tutti i fornitori che non hanno fornito prodotti**



-- ------------------------------------

-- **9. Eliminare tutti i prodotti con quantità inferiore a 10 in qualsiasi relazione prodotto-fornitore**



-- ------------------------------------

-- **10. Rimuovere tutti i prodotti di taglia "S" e colore "giallo"**



-- ------------------------------------

-- Svuota le tabelle con i tuoi dati di prova e carica i seguenti dati `fake` ed esegui le istruzioni `DQL`



-- ------------------------------------

-- ## Dati fake



-- Ecco le istruzioni SQL per inserire 10 record fittizi in ciascuna delle tabelle descritte:



-- ------------------------------------

-- **1. Inserire record nella tabella `prodotti`**



INSERT INTO prodotti (codice_prodotto, nome_prodotto, colore, taglia, magazzino) VALUES

('P001', 'Maglietta', 'Rosso', 'M', 'MZ01'),

('P002', 'Pantaloni', 'Blu', 'L', 'MZ02'),

('P003', 'Scarpe', 'Nero', '42', 'MZ03'),

('P004', 'Cappello', 'Verde', 'Unica', 'MZ01'),

('P005', 'Giacca', 'Grigio', 'XL', 'MZ02'),

('P006', 'Zaino', 'Rosso', NULL, 'MZ03'),

('P007', 'Occhiali', 'Nero', 'Unica', 'MZ01'),

('P008', 'Guanti', 'Bianco', 'M', 'MZ02'),

('P009', 'Cintura', 'Marrone', 'L', 'MZ03'),

('P010', 'Orologio', 'Oro', 'Unica', 'MZ01');



-- ------------------------------------

-- **2. Inserire record nella tabella `fornitori`**



INSERT INTO fornitori (codice_fornitore, nome_fornitore, numero_soci, Sede) VALUES

('F001', 'Forniture Srl', 10, 'sede'),

('F002', 'prodotti Spa', 15, 'Roma'),

('F003', 'Servizi & Co.', 8, 'Napoli'),

('F004', 'Global Supply', 20, 'Torino'),

('F005', 'Tech Parts', 5, 'Bologna'),

('F006', 'Fashion Line', 12, 'Firenze'),

('F007', 'Home Goods', 6, 'Verona'),

('F008', 'Quick Deliver', 9, 'Genova'),

('F009', 'Market Solutions', 7, 'Palermo'),

('F010', 'Green Supply', 4, 'Venezia');



-- ------------------------------------

-- **3. Inserire record nella tabella `clienti`**



INSERT INTO clienti (codice_cliente, Nome, Email, data_registrazione) VALUES

('C001', 'Mario Rossi', '<mario.rossi@example.com>', '2024-01-01'),

('C002', 'Anna Bianchi', '<anna.bianchi@example.com>', '2024-01-02'),

('C003', 'Luca Verdi', '<luca.verdi@example.com>', '2024-01-03'),

('C004', 'Giulia Neri', '<giulia.neri@example.com>', '2024-01-04'),

('C005', 'Marco Gialli', '<marco.gialli@example.com>', '2024-01-05'),

('C006', 'Elisa Blu', '<elisa.blu@example.com>', '2024-01-06'),

('C007', 'Francesco Viola', '<francesco.viola@example.com>', '2024-01-07'),

('C008', 'Chiara Marrone', '<chiara.marrone@example.com>', '2024-01-08'),

('C009', 'Alessio Rosa', '<alessio.rosa@example.com>', '2024-01-09'),

('C010', 'Sara Arancio', '<sara.arancio@example.com>', '2024-01-10');



-- ------------------------------------

-- **4. Inserire record nella tabella `prodotti_archivio`**



INSERT INTO prodotti_archivio (codice_prodotto, nome_prodotto, colore, taglia) VALUES

('A001', 'Maglietta Vintage', 'Rosso', 'M'),

('A002', 'Pantaloni Retrò', 'Blu', 'L'),

('A003', 'Scarpe Classiche', 'Nero', '42'),

('A004', 'Cappello d\'Epoca', 'Verde', 'Unica'),

('A005', 'Giacca Pesante', 'Grigio', 'XL'),

('A006', 'Zaino Montagna', 'Rosso', NULL),

('A007', 'Occhiali Retrò', 'Nero', 'Unica'),

('A008', 'Guanti Termici', 'Bianco', 'M'),

('A009', 'Cintura di Cuoio', 'Marrone', 'L'),

('A010', 'Orologio Vintage', 'Oro', 'Unica');



-- ------------------------------------

-- **5. Inserire record nella tabella `ordini`**



INSERT INTO ordini (codice_ordine, codice_cliente, data_ordine) VALUES

('O001', 'C001', '2024-01-11'),

('O002', 'C002', '2024-01-12'),

('O003', 'C003', '2024-01-13'),

('O004', 'C004', '2024-01-14'),

('O005', 'C005', '2024-01-15'),

('O006', 'C006', '2024-01-16'),

('O007', 'C007', '2024-01-17'),

('O008', 'C008', '2024-01-18'),

('O009', 'C009', '2024-01-19'),

('O010', 'C010', '2024-01-20');



-- ------------------------------------

-- **6. Inserire record nella tabella `vendite`**



INSERT INTO vendite (codice_vendita, codice_prodotto, Quantita, PrezzoUnitario, Totale) VALUES

('V001', 'P001', 10, 15.99, 159.90),

('V002', 'P002', 5, 29.99, 149.95),

('V003', 'P003', 8, 49.99, 399.92),

('V004', 'P004', 12, 9.99, 119.88),

('V005', 'P005', 6, 89.99, 539.94),

('V006', 'P006', 3, 59.99, 179.97),

('V007', 'P007', 15, 19.99, 299.85),

('V008', 'P008', 10, 12.99, 129.90),

('V009', 'P009', 4, 24.99, 99.96),

('V010', 'P010', 2, 199.99, 399.98);



-- ------------------------------------

-- **7. Inserire record nella tabella `fornitori_prodotti`**



INSERT INTO fornitori_prodotti (codice_fornitore, codice_prodotto, Qta) VALUES

('F001', 'P001', 100),

('F002', 'P002', 200),

('F003', 'P003', 150),

('F004', 'P004', 250),

('F005', 'P005', 300),

('F006', 'P006', 50),

('F007', 'P007', 80),

('F008', 'P008', 70),

('F009', 'P009', 90),

('F010', 'P010', 60);



-- ------------------------------------

-- **8. Inserire record nella tabella `ordini_temp`**



INSERT INTO ordini_temp (codice_ordine, codice_cliente, data_ordine) VALUES

('T001', 'C001', '2024-01-21'),

('T002', 'C002', '2024-01-22'),

('T003', 'C003', '2024-01-23'),

('T004', 'C004', '2024-01-24'),

('T005', 'C005', '2024-01-25'),

('T006', 'C006', '2024-01-26'),

('T007', 'C007', '2024-01-27'),

('T008', 'C008', '2024-01-28'),

('T009', 'C009', '2024-01-29'),

('T010', 'C010', '2024-01-30');



-- Altri record



-- 1. Inserire record nella tabella Prodotti

INSERT INTO Prodotti VALUES

('P011', 'Felpa', 'Blu', 'L', 'MZ01'),

('P012', 'Jeans', 'Denim', 'M', 'MZ02'),

('P013', 'Sneakers', 'Bianco', '43', 'MZ03'),

('P014', 'Sciarpa', 'Rosso', 'Unica', 'MZ01'),

('P015', 'Parka', 'Verde', 'XL', 'MZ02'),

('P016', 'Borsa', 'Nero', NULL, 'MZ03'),

('P017', 'Anello', 'Argento', 'Unica', 'MZ01'),

('P018', 'Calze', 'Grigio', 'M', 'MZ02'),

('P019', 'Portafoglio', 'Marrone', 'Unica', 'MZ03'),

('P020', 'Bracciale', 'Oro', 'Unica', 'MZ01');



-- 2. Inserire record nella tabella Fornitori

INSERT INTO Fornitori VALUES

('F011', 'Luxury Goods', 14, 'Milano'),

('F012', 'Fast Supply', 11, 'Roma'),

('F013', 'Eco Wear', 9, 'Napoli'),

('F014', 'Tech Fabrics', 18, 'Torino'),

('F015', 'Italian Fashion', 7, 'Bologna'),

('F016', 'Smart Retail', 13, 'Firenze'),

('F017', 'Best Products', 5, 'Verona'),

('F018', 'Trend Hub', 8, 'Genova'),

('F019', 'Design Concepts', 6, 'Palermo'),

('F020', 'Handmade Creations', 4, 'Venezia');



-- 3. Inserire record nella tabella Clienti

INSERT INTO Clienti VALUES

('C011', 'Giovanni Azzurro', '<giovanni.azzurro@example.com>', '2024-01-11'),

('C012', 'Martina Verde', '<martina.verde@example.com>', '2024-01-12'),

('C013', 'Paolo Nero', '<paolo.nero@example.com>', '2024-01-13'),

('C014', 'Francesca Bianca', '<francesca.bianca@example.com>', '2024-01-14'),

('C015', 'Davide Grigio', '<davide.grigio@example.com>', '2024-01-15'),

('C016', 'Silvia Viola', '<silvia.viola@example.com>', '2024-01-16'),

('C017', 'Emanuele Marrone', '<emanuele.marrone@example.com>', '2024-01-17'),

('C018', 'Roberta Gialla', '<roberta.gialla@example.com>', '2024-01-18'),

('C019', 'Alberto Rosso', '<alberto.rosso@example.com>', '2024-01-19'),

('C020', 'Elena Arancio', '<elena.arancio@example.com>', '2024-01-20');



-- 4. Inserire record nella tabella ProdottiArchivio

INSERT INTO Prodotti_Archivio VALUES

('A011', 'Felpa Vintage', 'Blu', 'L'),

('A012', 'Jeans d\'Epoca', 'Denim', 'M'),

('A013', 'Sneakers Classiche', 'Bianco', '43'),

('A014', 'Sciarpa Retrò', 'Rosso', 'Unica'),

('A015', 'Parka Pesante', 'Verde', 'XL'),

('A016', 'Borsa Vintage', 'Nero', NULL),

('A017', 'Anello Antico', 'Argento', 'Unica'),

('A018', 'Calze di Lana', 'Grigio', 'M'),

('A019', 'Portafoglio in Pelle', 'Marrone', 'Unica'),

('A020', 'Bracciale Elegante', 'Oro', 'Unica');



-- 5. Inserire record nella tabella Ordini

INSERT INTO Ordini VALUES

('O011', 'C011', '2024-01-21'),

('O012', 'C012', '2024-01-22'),

('O013', 'C013', '2024-01-23'),

('O014', 'C014', '2024-01-24'),

('O015', 'C015', '2024-01-25'),

('O016', 'C016', '2024-01-26'),

('O017', 'C017', '2024-01-27'),

('O018', 'C018', '2024-01-28'),

('O019', 'C019', '2024-01-29'),

('O020', 'C020', '2024-01-30');



-- 6. Inserire record nella tabella Vendite

INSERT INTO Vendite VALUES

('V011', 'P011', 7, 25.99, 181.93),

('V012', 'P012', 4, 39.99, 159.96),

('V013', 'P013', 6, 59.99, 359.94),

('V014', 'P014', 9, 14.99, 134.91),

('V015', 'P015', 3, 99.99, 299.97),

('V016', 'P016', 5, 69.99, 349.95),

('V017', 'P017', 8, 29.99, 239.92),

('V018', 'P018', 10, 9.99, 99.90),

('V019', 'P019', 6, 34.99, 209.94),

('V020', 'P020', 2, 149.99, 299.98);



-- 7. Inserire record nella tabella FornitoriProdotti

INSERT INTO Fornitori_Prodotti VALUES

('F011', 'P011', 120),

('F012', 'P012', 180),

('F013', 'P013', 140),

('F014', 'P014', 220),

('F015', 'P015', 250),

('F016', 'P016', 60),

('F017', 'P017', 90),

('F018', 'P018', 75),

('F019', 'P019', 85),

('F020', 'P020', 50);



-- 8. Inserire record nella tabella OrdiniTemp

INSERT INTO Ordini_Temp VALUES

('T011', 'C011', '2024-02-01'),

('T012', 'C012', '2024-02-02'),

('T013', 'C013', '2024-02-03'),

('T014', 'C014', '2024-02-04'),

('T015', 'C015', '2024-02-05'),

('T016', 'C016', '2024-02-06'),

('T017', 'C017', '2024-02-07'),

('T018', 'C018', '2024-02-08'),

('T019', 'C019', '2024-02-09'),

('T020', 'C020', '2024-02-10');



-- ------------------------------------



-- # Esercizi di SELECT

--



-- -- ------------------------------------



-- ------------------------------------

-- Esegui 10 esercizi di `SELECT` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- **1. Selezionare tutti i dettagli dei prodotti di colore rosso**



-- ------------------------------------

-- **2. Trovare i nomi e le sedi dei fornitori con più di 5 soci**



-- ------------------------------------

-- **3. Trovare il nome e l'email dei clienti registrati negli ultimi 30 giorni**



-- ------------------------------------

-- **4. Calcolare il totale delle vendite per ogni prodotto**



-- ------------------------------------

-- **5. Recuperare i dettagli dei fornitori che forniscono almeno un prodotto di colore "verde"**



-- ------------------------------------

-- **6. Trovare i nomi dei clienti che hanno effettuato ordini**



-- ------------------------------------

-- **7. Visualizzare i prodotti mai forniti da alcun fornitore**



-- ------------------------------------

-- **8. Trovare i fornitori che forniscono almeno due prodotti diversi**



-- ------------------------------------

-- **9. Recuperare i dettagli delle vendite per prodotti il cui prezzo unitario è maggiore della media**



-- ------------------------------------

-- **10. Trovare i prodotti venduti esclusivamente nel magazzino "MZ001"**



-- ------------------------------------



-- # Esercizi con OPERATORI

--



-- -- ------------------------------------



-- ------------------------------------



-- Esegui 10 esercizi di `OPERATORI` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- Questi esercizi coprono diversi tipi di operatori:

-- - **Aritmetici** (`+`, `*`, `/`)

-- - **Logici** (`AND`, `OR`, `NOT`)

-- - **Di confronto** (`=`, `<>`, `>=`, `BETWEEN`)

-- - **Speciali** (`LIKE`, `IN`).



-- ------------------------------------

-- **1. Selezionare il nome e il prezzo aumentato del 10% per tutti i prodotti**



-- ------------------------------------

-- **2. Trovare i prodotti con un prezzo tra 50 e 100 (inclusi)**



-- ------------------------------------

-- **3. Visualizzare i fornitori con un numero di soci maggiore o uguale a 10**



-- ------------------------------------

-- **4. Calcolare la quantità totale fornita per ogni prodotto**



-- ------------------------------------

-- **5. Trovare i fornitori con il nome che inizia con "A"**



-- ------------------------------------

-- **6. Mostrare tutti i prodotti che non sono né rossi né gialli**



-- ------------------------------------

-- **7. Trovare i fornitori che si trovano in città diverse da "Milano"**



-- ------------------------------------

-- **8. Calcolare la media delle quantità fornite da ciascun fornitore**



-- ------------------------------------

-- **9. Selezionare tutti i fornitori che forniscono almeno un prodotto in quantità superiore a 50**



-- ------------------------------------

-- **10. Visualizzare i prodotti con prezzo maggiore di 20 e in magazzini diversi da "MZ001"**



-- ------------------------------------



-- # Esercizi con JOIN

--



-- -- ------------------------------------



-- ------------------------------------



-- Esegui 10 esercizi di `JOIN` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- Questi esercizi coprono i seguenti tipi di **JOIN**:

-- - **INNER JOIN**: restituisce solo le righe con corrispondenze tra le tabelle.

-- - **LEFT JOIN**: restituisce tutte le righe della tabella sinistra, con valori `NULL` per la destra dove non c'è corrispondenza.

-- - **Condizioni e aggregazioni**: integrano logiche con `GROUP BY`, `HAVING` e funzioni di aggregazione.



-- ------------------------------------

-- **1. Mostrare il nome dei prodotti e i nomi dei fornitori che li forniscono**



-- ------------------------------------

-- **2. Trovare i fornitori che non forniscono alcun prodotto (LEFT JOIN con condizione NULL)**



-- ------------------------------------

-- **3. Calcolare la quantità totale fornita per ogni prodotto e visualizzare anche i prodotti che non sono forniti (LEFT JOIN)**



-- ------------------------------------

-- **4. Visualizzare i fornitori che forniscono prodotti con quantità maggiore di 50**



-- ------------------------------------

-- **5. Trovare i prodotti non forniti da nessun fornitore**



-- ------------------------------------

-- **6. Trovare i fornitori che forniscono solo prodotti di colore "rosso"**



-- ------------------------------------

-- **7. Visualizzare i fornitori che forniscono almeno due prodotti diversi**



-- ------------------------------------

-- **8. Trovare i prodotti forniti solo da un unico fornitore**



-- ------------------------------------

-- **9. Trovare i fornitori che forniscono prodotti con quantità media superiore a 30**



-- ------------------------------------

-- **10. Visualizzare i prodotti e il numero di fornitori che li forniscono**



-- ------------------------------------

-- # Esercizi con GROUP BY



-- ------------------------------------



-- ------------------------------------



-- Esegui 10 esercizi di `GROUP BY` in SQL per esercitarsi con la sintassi e i concetti.



-- ------------------------------------

-- Questi esercizi includono:

-- - **Funzioni aggregate**: `SUM`, `COUNT`, `AVG`, `MAX`.

-- - **GROUP BY**: per raggruppare i dati e calcolare metriche aggregate.

-- - **HAVING**: per filtrare i risultati basandosi sulle funzioni aggregate.

-- - **Ordinamento**: utilizzando `ORDER BY` e combinazioni con `LIMIT`.



-- ------------------------------------

-- **1. Contare il numero totale di prodotti disponibili**



-- ------------------------------------

-- **2. Calcolare la quantità totale fornita per ogni prodotto**



-- ------------------------------------

-- **3. Determinare la quantità media di prodotti forniti da ciascun fornitore**
create view quantita_prodotti_per_fornitore as
select f.nome_fornitore as fornitore, AVG(fp.Qta) as "Quantità media"
from fornitori as f
join fornitori_prodotti fp 
	using(codice_fornitore)
GROUP BY f.codice_fornitore

ORDER BY AVG(fp.Qta) DESC
LIMIT 10
;
-- ------------------------------------

-- **4. Calcolare il numero di fornitori per ciascun prodotto**



-- ------------------------------------

-- **5. Trovare il prodotto con la quantità massima fornita**



-- ------------------------------------

-- **6. Determinare la quantità totale fornita per ciascun colore di prodotto**



-- ------------------------------------

-- **7. Contare il numero di prodotti forniti da ogni fornitore**



-- ------------------------------------

-- **8. Calcolare il numero medio di soci dei fornitori per città**



-- ------------------------------------

-- **9. Trovare i prodotti con una quantità totale fornita superiore a 100**



-- ------------------------------------

-- **10. Determinare il numero di prodotti forniti e la quantità totale fornita da fornitori con più di 5 soci**



-- ------------------------------------

-- # sperimentare le principali funzioni di testo in SQL



-- ------------------------------------

-- **Esercizio 1: Convertire il testo in maiuscolo**

-- **Descrizione:** Seleziona i nomi dei clienti in maiuscolo.  



-- ------------------------------------

-- **Esercizio 2: Convertire il testo in minuscolo**

-- **Descrizione:** Seleziona i cognomi dei clienti in minuscolo.  



-- ------------------------------------

-- **Esercizio 3: Concatenare stringhe**

-- **Descrizione:** Crea una colonna che mostri il nome completo (nome + cognome).  



-- ------------------------------------

-- **Esercizio 4: Estrarre una parte di testo**

-- **Descrizione:** Estrai i primi tre caratteri del nome del cliente.  



-- ------------------------------------

-- **Esercizio 5: Calcolare la lunghezza di una stringa**

-- **Descrizione:** Trova la lunghezza del nome dei clienti.  



-- ------------------------------------

-- **Esercizio 6: Rimuovere spazi iniziali e finali**

-- **Descrizione:** Rimuovi spazi inutili dai nomi dei clienti.  



-- ------------------------------------

-- **Esercizio 7: Sostituire una parte di testo**

-- **Descrizione:** Sostituisci "Rosso" con "Red" nei colori dei prodotti.  



-- ------------------------------------

-- **Esercizio 8: Cercare una sottostringa**

-- **Descrizione:** Trova i clienti con lettera iniziale del nome "A".  



-- ------------------------------------

-- **Esercizio 9: Inserire testo con zeri a sinistra**

-- **Descrizione:** Formatta gli ID degli ordini in modo che abbiano sempre 5 cifre (es. 00001).  



-- ------------------------------------

-- # Funzioni numeriche



-- ------------------------------------

-- **Esercizio 1: Arrotondare un numero**

-- **Descrizione:** Arrotonda il prezzo dei prodotti a due decimali.  

-- ------------------------------------



-- **Esercizio 2: Trovare il valore assoluto**

-- **Descrizione:** Calcola il valore assoluto della differenza tra quantità e 50.  



-- ------------------------------------

-- **Esercizio 3: Calcolare la potenza**

-- **Descrizione:** Calcola il quadrato della quantità dei prodotti.  



-- ------------------------------------

-- **Esercizio 4: Calcolare la radice quadrata**

-- **Descrizione:** Trova la radice quadrata del prezzo di ogni prodotto.  



-- ------------------------------------

-- **Esercizio 5: Generare numeri casuali**

-- **Descrizione:** Associa un numero casuale a ogni cliente.  



-- ------------------------------------

-- **Esercizio 6: Trovare il valore massimo e minimo**

-- **Descrizione:** Mostra il prezzo massimo e minimo dei prodotti.  



-- ------------------------------------

-- **Esercizio 7: Arrotondare per eccesso e per difetto**

-- **Descrizione:** Mostra il prezzo arrotondato per eccesso e per difetto.  



-- ------------------------------------

-- **Esercizio 8: Calcolare il resto della divisione (MOD)**

-- **Descrizione:** Trova il resto della divisione tra quantità e 3 per ogni prodotto.  



-- ------------------------------------

-- **Esercizio 9: Calcolare una media**

-- **Descrizione:** Calcola la media dei prezzi dei prodotti.  



-- ------------------------------------

-- # Funzioni data, ora, datetime



-- ------------------------------------

-- ------------------------------------

-- **Esercizio 1: Estrarre la data corrente**

-- **Descrizione:** Visualizza la data corrente per ogni ordine.  



-- ------------------------------------

-- **Esercizio 2: Calcolare l'età di un cliente**

-- **Descrizione:** Calcola l'età in anni di ogni cliente in base alla data di nascita.  



-- ------------------------------------

-- **Esercizio 3: Estrarre anno, mese e giorno**

-- **Descrizione:** Estrai l'anno, il mese e il giorno dalla data di un ordine.  



-- ------------------------------------

-- **Esercizio 4: Calcolare la differenza tra date**

-- **Descrizione:** Calcola il numero di giorni trascorsi tra la data dell'ordine e oggi.  



-- ------------------------------------

-- **Esercizio 5: Aggiungere giorni a una data**

-- **Descrizione:** Aggiungi 10 giorni alla data di ogni ordine.  



-- ------------------------------------

-- **Esercizio 6: Sottrarre mesi da una data**

-- **Descrizione:** Sottrai 3 mesi alla data di ogni ordine.  



-- ------------------------------------

-- **Esercizio 7: Estrarre il giorno della settimana**

-- **Descrizione:** Mostra il giorno della settimana per ogni ordine (1 = Domenica, 7 = Sabato).  



-- ------------------------------------

-- **Esercizio 8: Formattare una data**

-- **Descrizione:** Formatta la data degli ordini nel formato "GG/MM/AAAA".  



-- ------------------------------------

-- **Esercizio 9: Calcolare il numero di mesi tra due date**

-- **Descrizione:** Calcola il numero di mesi tra la data dell'ordine e oggi