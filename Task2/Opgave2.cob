       IDENTIFICATION DIVISION.
       PROGRAM-ID. Opgave2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Kunde-id                PIC X(10) VALUE SPACES.
       01  Fornavn                 PIC X(20) VALUE SPACES.
       01  Efternavn               PIC X(20) VALUE SPACES.
       01  Kontonummer             PIC X(20) VALUE SPACES.
       01  Valutakode              PIC X(3) VALUE SPACES.


       PROCEDURE DIVISION.
      *Nedenfor kommer en display- Cobols måde at skrive i konsollen
       MOVE "123456" TO Kunde-id
       MOVE "Aleksander" TO Fornavn
       MOVE "Jensen" TO Efternavn
       MOVE "DK1234567" TO Kontonummer
       MOVE "DKK" TO Valutakode

       DISPLAY Kunde-id
       DISPLAY Fornavn
       DISPLAY Efternavn
       DISPLAY Kontonummer
       DISPLAY Valutakode
       STOP RUN.