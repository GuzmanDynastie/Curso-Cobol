       IDENTIFICATION DIVISION.
       PROGARM-ID.                PROGPBAS.
       AUTHOR.                    EMMANUEL GUZMAN.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              13/12/24.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      * -------------------------------------------------------------- *
      * IF ANIDADOS: EJEMPLO DE CONDICIONALES DENTRO DE OTRAS          *
      *              CONDICIONALES.                                    *
      * -------------------------------------------------------------- *

       010-ANIDADOS.
           IF CAMPO-A > CAMPO-B
              IF CAMPO-E < CAMPO-F
                 PERFORM 020-CALCULO-01 THRU 020-FIN
              ELSE
                 PERFORM 030-CALCULO-02 THRU 030-FIN
              END-IF
           ELSE
              IF CAMPO-C = CAMPO-D
                 IF CAMPO-G = CAMPO-H
                    NEXT SENTENCE
                 ELSE
                    PERFORM 040-CALCULO-04 THRU 040-FIN
                 END-IF
              ELSE
                 PERFORM 050-CALCULO-05 THRU 050-FIN
              END-IF
           END-IF
