       IDENTIFICATION DIVISION.
       PROGRAM-ID. Opgave5.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       COPY "KUNDER.cpy".

       01  Renset-navn             PIC X(40) VALUE SPACES.
       01  IX                      PIC 9(2)  VALUE 1.
       01  IX2                     PIC 9(2)  VALUE 1.
       01  Current-Char            PIC X(1)  VALUE SPACES.
       01  Previous-Char           PIC X(1)  VALUE SPACES.

       PROCEDURE DIVISION.
       MOVE "Alexander" TO Fornavn
       MOVE "Jensen" TO Efternavn
       MOVE "123456789" TO Kunde-id
       MOVE "DK12345678912345" TO Kontonummer
       MOVE "2500.75" TO Balance
       MOVE "DKK" TO Valutakode

       STRING Fornavn DELIMITED BY SPACE
              " "    DELIMITED BY SIZE
              Efternavn DELIMITED BY SPACE
              INTO Navn

       STRING Balance    DELIMITED BY SPACE
              " "        DELIMITED BY SIZE
              Valutakode DELIMITED BY SIZE
              INTO Balance-linje

       PERFORM VARYING IX FROM 1 BY 1
       UNTIL IX > LENGTH OF Navn
       MOVE Navn(IX:1) TO Current-Char

       IF Current-Char NOT = SPACE 
       OR Previous-Char NOT = SPACE 
       MOVE Current-Char TO Renset-navn(IX2:1)
       ADD 1 to IX2
       END-IF

       MOVE Current-Char TO Previous-Char

       END-PERFORM

      *Nedenfor kommer en display- Cobols måde at skrive i konsollen
       DISPLAY Kunde-id
       DISPLAY Renset-Navn
       DISPLAY Kontonummer
       DISPLAY Balance-linje

       STOP RUN.
