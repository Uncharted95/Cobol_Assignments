       IDENTIFICATION DIVISION.
       PROGRAM-ID. Opgave3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Kunde-id                PIC X(10) VALUE SPACES.
       01  Fornavn                 PIC X(20) VALUE SPACES.
       01  Efternavn               PIC X(20) VALUE SPACES.
       01  Navn                    PIC X(40) VALUE SPACES.
       01  Kontonummer             PIC X(20) VALUE SPACES.
       01  Valutakode              PIC X(3) VALUE SPACES. 
       
       01  Indeksvariabel(IX:1)
       01  IndexO(IX2)
       01  CURRENT-CHAR
       01  PREVIOUS-CHAR
       01  Outputvariabel


       PROCEDURE DIVISION.
       MOVE "Alexander" TO Fornavn
       MOVE "Jensen" TO Efternavn

       STRING Fornavn DELIMITED BY SIZE " "
              DELIMITED BY SIZE Efternavn
              DELIMITED BY SIZE
              INTO Navn
      *Nedenfor kommer en display- Cobols måde at skrive i konsollen
       DISPLAY Navn
       STOP RUN.