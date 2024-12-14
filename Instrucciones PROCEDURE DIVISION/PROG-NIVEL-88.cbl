       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGPBAS.
       AUTHOR.                    EMMANUEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              13/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * -------------------------------------------------------------- *
      * NIVEL 88: SE DEVINEN EN LA WORKING-STORAGE SECTION.            *
      *           IDENTIFICA LOS POSIBLES VALORES CONDICIONALES DE UN  *
      *           CAMPO.                                               *
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
       01  WS-MES                 PIC 9(02).
           88 MES-VALIDO          VALUE 1 THRU 12.

       PROCEDURE DIVISION.
       010-VALIDA.
           DISPLAY "INGRESA UN MES (1 - 12): "
           ACCEPT WS-MES

           IF MES-VALIDO
              THEN
                  DISPLAY "MES CORRECTO"
              ELSE
                  DISPLAY "INTENTE OTRO NUMERO"
           END-IF.

           GOBACK.
