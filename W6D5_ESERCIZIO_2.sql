USE videogamestoredb;



-- Seleziona tutti gli impiegati con una laurea in Economia.

SELECT 
    *
FROM
    IMPIEGATO
WHERE
    TitoloStudio = 'Laurea in Economia';
SELECT 
    NOME
FROM
    IMPIEGATO
WHERE
    TitoloStudio = 'Laurea in Economia';
SELECT 
    *
FROM
    servizio_impegato;



-- Seleziona gli impiegati che lavorano come Cassiere o che hanno un Diploma di Informatica.

SELECT 
    *
FROM
    servizio_impiegato
WHERE
    Carica = 'Cassiere';
SELECT 
    *
FROM
    IMPIEGATO
WHERE
    TitoloStudio = 'Diploma di informatica';

SELECT 
    *
FROM
    impiegato
        LEFT JOIN
    servizio_impegato ON impiegato.CodiceFiscale = servizio_impegato.CodiceFiscale
WHERE
    servizio_impegato.Carica = ('Cassiere')
        OR impiegato.TitoloStudio = ('Diploma di Informatica');



-- Seleziona i nomi e i titoli degli impiegati che hanno iniziato a lavorare dopo il 1 gennaio 2023.

SELECT 
    Nome, TitoloStudio
FROM
    impiegato
        LEFT JOIN
    servizio_impegato ON impiegato.CodiceFiscale = servizio_impegato.CodiceFiscale
WHERE
    servizio_impegato.DataInizio > '2023-01-01';    

    
    
    -- Seleziona i titoli di studio distinti tra gli impiegati
    
   SELECT DISTINCT
    TitoloStudio
FROM
    impiegato;
    
    
    
    -- Seleziona gli impiegati con un titolo di studio diverso da "Laurea in Economia".
    
  SELECT 
    *
FROM
    impiegato
WHERE
    TitoloStudio NOT LIKE 'Laurea in Economia';
    
    
    
    -- Seleziona gli impiegati che hanno iniziato a lavorare prima del 1 luglio 2023 e sono Commessi.
    
   SELECT 
    *
FROM
    impiegato
        JOIN
    servizio_impegato ON impiegato.CodiceFiscale = servizio_impegato.CodiceFiscale
WHERE
    servizio_impegato.DataInizio < '2023-07-01'
        AND servizio_impegato.Carica = 'Commesso';
        
        
        
	-- Seleziona i titoli e gli sviluppatori dei videogiochi distribuiti nel 2020.
 
 SELECT 
    Titolo, Sviluppatore
FROM
    videogioco
WHERE
    YEAR(AnnoDistribuizione) = '2020';


    
    
    
    
