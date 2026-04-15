       IDENTIFICATION DIVISION.
       PROGRAM-ID. Opgave3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 KUNDEOPL                 PIC X(10) VALUE SPACES.
           COPY "KUNDER.cpy"
           02  Kunde-id                PIC X(10) VALUE SPACES.
           02  Fornavn                 PIC X(20) VALUE SPACES.
           02  Efternavn               PIC X(20) VALUE SPACES.
           02  Navn                    PIC X(40) VALUE SPACES.
       
       01  KONTOINFO               PIC X(10) VALUE SPACES.
           02  Kontonummer             PIC X(20) VALUE SPACES.
           02  Valutakode              PIC X(3)  VALUE SPACES.

           02  Balance-linje           PIC X(25) VALUE SPACES.
       01  Renset-navn             PIC X(40) VALUE SPACES.
       01  IX                      PIC 9(2)  VALUE 1.
       01  IX2                     PIC 9(2)  VALUE 1.
       01  Current-Char            PIC X(1)  VALUE SPACES.
       01  Previous-Char           PIC X(1)  VALUE SPACES.
       01  Balance                 PIC X(20) VALUE SPACES.
     
       

       PROCEDURE DIVISION.
       MOVE "Alexander" TO Fornavn
       MOVE "Jensen" TO Efternavn
       MOVE "123456789" TO Kunde-id
       MOVE "DK12345678912345" TO Kontonummer
       MOVE "2500.75" TO Balance
       MOVE "DKK" TO Valutakode

       STRING Fornavn DELIMITED BY SIZE " "
              DELIMITED BY SIZE Efternavn
              DELIMITED BY SIZE
              INTO Navn

       STRING Balance DELIMITED BY SPACE " "
              DELIMITED BY SIZE Valutakode
              DELIMITED BY SIZE
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
       DISPLAY KUNDEOPL
       DISPLAY KONTOINFO

       STOP RUN.