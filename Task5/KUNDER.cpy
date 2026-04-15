       01 KUNDE-POST.
           02  Kunde-id                PIC X(10) VALUE SPACES.
           02  Fornavn                 PIC X(20) VALUE SPACES.
           02  Efternavn               PIC X(20) VALUE SPACES.
           02  Navn                    PIC X(40) VALUE SPACES.

           02  ADDRESSE.
               03  VEJNAVN             PIC X(30).
               03  HUSNR               PIC X(5).
               03  ETAGE               PIC X(5).
               03  SIDE                PIC X(5).
               03  BYNAVN              PIC X(20).
               03  POSTNR              PIC X(4).
               03  LANDE-KODE          PIC X(2).

           02  KONTAKT-INFO.
               03  TELEFON             PIC X(8).
               03  EMAIL               PIC X(50).

           02  KONTOINFO.
               03  Kontonummer         PIC X(20) VALUE SPACES.
               03  Valutakode          PIC X(3)  VALUE SPACES.
               03  Balance             PIC X(20) VALUE SPACES.
               03  Balance-linje       PIC X(25) VALUE SPACES.
