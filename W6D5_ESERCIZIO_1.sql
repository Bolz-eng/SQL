USE GESTIONALE;


-- Seleziona tutti i prodotti con un prezzo superiore a 50 euro dalla tabella Prodotti.

SELECT * FROM prodotti
WHERE Prezzo> '50';


-- Seleziona tutte le email dei clienti il cui nome inizia con la lettera 'A' dalla tabella Clienti.

SELECT * FROM clienti
SELECT Email FROM clienti
WHERE Nome LIKE 'A%';


-- Seleziona tutti gli ordini con una quantità maggiore di 10 o con un importo totale inferiore a 100 euro dalla tabella Ordini.

SELECT * FROM ordini 
JOIN dettaglioordine ON ordini.IDProdotto = dettaglioordine.IDProdotto
WHERE ordini.Quantità> 10
OR dettaglioordine.PrezzoTotale < 100;

INSERT INTO dettaglioordine (IDOrdine, IDProdotto, IDCliente, PrezzoTotale) SELECT
ord.IDOrdine,
ord.IDProdotto,
ord.IDCliente,
prd.prezzo * ord.quantità as PrezzoTotale
FROM Ordini ord JOIN Prodotti prd ON ord.IDProdotto = prd.IDProdotto


-- Seleziona tutti i prezzi dei prodotti il cui nome contiene la parola 'tech' indipendentemente dalla posizione nella tabella Prodotti.

SELECT Prezzo FROM Prodotti
WHERE NomeProdotto LIKE '%tech%';


-- Seleziona tutti i clienti che non hanno un indirizzo email nella tabella Clienti.

SELECT * FROM clienti
WHERE Email IS NULL;


-- Seleziona tutti i prodotti il cui nome inizia con 'M' e termina con 'e' indipendentemente dalla lunghezza della parola nella tabella Prodotti.

SELECT * FROM prodotti
WHERE NomeProdotto LIKE 'M%'
AND NomeProdotto LIKE '%E';