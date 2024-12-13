       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGCOMP.
       AUTHOR.                    EMMANUEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              12/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * ------------------------------------------------------------- *
      * COMPUTE: NOS PERMITE REALIZAR OPERACIONES ALGEBRAICAS         *
      *          UTILIZANDO OPERADORES ARITMETICOS (+, -, *, /, **)   *
      * ------------------------------------------------------------- *

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-CAMPO-01         PIC 9(03)  VALUE 20.
           05 WS-CAMPO-02         PIC 9(03)  VALUE 8.
           05 WS-CAMPO-03         PIC S9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
       010-RAIZ.
           COMPUTE WS-CAMPO-03 = WS-CAMPO-01 - WS-CAMPO-02
           DISPLAY "CAMPO-03: " WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = WS-CAMPO-01 * WS-CAMPO-02                                                                                                                             C
           DISPLAY "CAMPO-03: " WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = WS-CAMPO-02 ** 3                                                                                                                           C
           DISPLAY "CAMPO-03: " WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = (WS-CAMPO-01 + WS-CAMPO-02) / 4                                                                                                                      C
           DISPLAY "CAMPO-03: " WS-CAMPO-03
           GOBACK.
