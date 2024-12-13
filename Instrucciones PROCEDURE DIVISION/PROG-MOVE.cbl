       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGMOVE.
       AUTHOR.                    EMMAUNEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              12/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * -------------------------------------------------------------- *
      * MOVE: MUEVE UN CAMPO O UNA LITERAL A OTRO CAMPO                *
      * -------------------------------------------------------------- *

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 WS-AREA-A-USAR.
          05 WS-CAMPO-01          PIC X(08) VALUE "EMMANUEL".
          05 WS-CAMPO-02          PIC X(08) VALUE SPACES.

          05 WS-NOMBRE-NPM.
             10 WS-NOMBRE         PIC X(15) VALUE "EMMANUEL      ".
             10 WS-PATERNO        PIC X(15) VALUE "GUZMAN        ".
             10 WS-MATERNO        PIC X(15) VALUE "COVARRUBIAS   ".

          05 WS-NOMBRE-PMN.
             10 WS-PATERNO        PIC X(15).
             10 WS-MATERNO        PIC X(15).
             10 WS-NOMBRE         PIC X(15).

       PROCEDURE DIVISION.
       010-RAIZ.
           MOVE WS-CAMPO-01 TO WS-CAMPO-02
           DISPLAY "CONTENIDO DE CAMPO 02: " WS-CAMPO-02
           DISPLAY " "
           MOVE CORRESPONDING WS-NOMBRE-NPM TO WS-NOMBRE-PMN
           DISPLAY "CONTENIDO DE WS-NOMBRE-PMN: " WS-NOMBRE-PMN
           GOBACK.
