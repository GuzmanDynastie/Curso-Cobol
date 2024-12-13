       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGACDI.
       AUTHOR.                    EMMANUEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              12/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * -------------------------------------------------------------- *
      * DISPLAY: MUESTRA INFORMACION EN LA PANTALLA O EN REPORTE       *
      * -------------------------------------------------------------- *

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.            IBM-3083.
       OBJECT-COMPUTER.            IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-CUENTA           PIC 9(05).
           05 WS-FECHA            PIC 9(06).
           05 WS-DIAS-TRANSCURRIDOS.
              10 WS-ANIO          PIC 9(02).
              10 WS-DIAS          PIC 9(03).
           05 WS-DIA-SEMANA       PIC 9(01).
           05 WS-HORA             PIC 9(08).

       PROCEDURE DIVISION.
       010-RAIZ.
           DISPLAY "TECLEE EL NUMERO DE CUENTA:"
           ACCEPT WS-CUENTA
           DISPLAY "LA CUENTA ES: "WS-CUENTA
           DISPLAY " "
           ACCEPT WS-FECHA FROM DATE
           DISPLAY "LA FECHA DEL DIA ES: " WS-FECHA
           DISPLAY " "
           ACCEPT WS-DIAS-TRANSCURRIDOS FROM DAY
           DISPLAY "LOS DIAS TRANSCURRIDOS SON: " WS-DIAS-TRANSCURRIDOS
           DISPLAY " "
           ACCEPT WS-DIA-SEMANA FROM DAY-OF-WEEK
           DISPLAY "EL DIA DE LA SEMANA ES: " WS-DIA-SEMANA
           DISPLAY " "
           ACCEPT WS-HORA FROM TIME
           DISPLAY "LA HORA ES DEL DIA ES: " WS-HORA
           GOBACK.
