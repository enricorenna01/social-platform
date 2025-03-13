# social-platform

Vogliamo creare uno spazio virtuale in stile social network dove gli utenti possano condividere le proprie esperienze. Ogni utente può creare dei post, al quale può aggiungere uno o più media come foto e video. Ogni post può avere uno o più tags che servono per categorizzare i contenuti. Gli altri utenti possono interagire con il post esprimendo il loro gradimento attraverso un semplice like.

Step 1 (Diagramma ER)
Individuate prima le entità su cui si basa la piattaforma e poi osservate come sono relazionate. Inoltre, specificate i campi e i diversi vincoli disponibili per ciascun campo, come ad esempio l'utilizzo di UNIQUE per garantire l'unicità dei valori e NOT NULL per indicare l’obbligo di fornire un valore per quel campo. Attenzione alle chiavi primarie. Espandere il diagramma per integrare anche l’entità Tags
BONUS: i post possono avere anche i Commenti.
Utilizzare diagrams o drawsql per la creazione dello schema. 
Esportare quindi il diagramma in png e caricarlo nella repo
Step 2 (MySQL Query)
Una volta che siete sicure e sicuri del vostro diagramma, potete passare alla seconda fase. Create un nuovo database nel vostro MySQL Workbench e importate il file db.sql fornito nella cartella.
Le query da sviluppare sono le seguenti:
Seleziona gli utenti che hanno postato almeno un video
Seleziona tutti i post senza Like (13)
Conta il numero di like per ogni post (165 nel caso di query con SELECT + JOIN oppure 175 nel caso di query con sola SELECT)
Ordina gli utenti per il numero di media caricati (25) 
Ordina gli utenti per totale di likes ricevuti nei loro posts (25) 
Dopo aver testato le vostre query con MySQL Workbench, riportatele in un file txt e caricatelo nella vostra repo.
Alcune note: 
accanto ad alcune query abbiamo indicato il numero di risultati che dovrebbe restituire; sfruttateli per capire se la query funziona.
