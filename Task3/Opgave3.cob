       IDENTIFICATION DIVISION.
       PROGRAM-ID. Opgave3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Kunde-id                PIC X(10) VALUE SPACES.
       01  Fornavn                 PIC X(20) VALUE SPACES.
       01  Efternavn               PIC X(20) VALUE SPACES.
       01  Navn                    PIC X(40) VALUE SPACES.
       01  Kontonummer             PIC X(20) VALUE SPACES.
       01  Valutakode              PIC X(3)  VALUE SPACES.
       01  Renset-navn             PIC X(40) VALUE SPACES.
       01  IX                      PIC 9(2)  VALUE 1.
       01  IX2                     PIC 9(2)  VALUE 1.
       01  Current-Char            PIC X(1)  VALUE SPACES.
       01  Previous-Char           PIC X(1)  VALUE SPACES.
       

       PROCEDURE DIVISION.
       MOVE "Alexander" TO Fornavn
       MOVE "Jensen" TO Efternavn

       STRING Fornavn DELIMITED BY SIZE " "
              DELIMITED BY SIZE Efternavn
              DELIMITED BY SIZE
              INTO Navn
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
       DISPLAY Renset-Navn
       STOP RUN.