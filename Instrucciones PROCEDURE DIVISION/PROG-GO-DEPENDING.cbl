       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGPBAS.
       AUTHOR.                    EMMANUEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              13/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * -------------------------------------------------------------- *
      * GO TO DEPENDING ON: TRANSFIERE EL CONTROL A UNA SERIE DE       *
      *                     RUTINAS DEPENDIENDO DE UN CAMPO.           *
      * -------------------------------------------------------------- *

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-OPCION-MENU      PIC 9(01).

       PROCEDURE DIVISION.
       000-RAIZ.
           DISPLAY "DIGITE LA OPCION (1-4)"
           ACCEPT WS-OPCION-MENU
           GO TO 010-ALTA
                 020-BAJA
                 030-CAMBIO
                 040-RETIRO
           DEPENDING ON WS-OPCION-MENU
           DISPLAY "OPCION INVALIDA"
           GOBACK.

       010-ALTA.
           DISPLAY "LA OPCION DEL MENU ES ALTA"
           GOBACK.

       020-BAJA.
           DISPLAY "LA OPCION DEL MENU ES BAJA"
           GOBACK.

       030-CAMBIO.
           DISPLAY "LA OPCION DEL MENU ES CAMBIO"
           GOBACK.

       040-RETIRO.
           DISPLAY "LA OPCION DEL MENU ES RETIRO"
           GOBACK.
