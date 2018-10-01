IDENTIFICATION DIVISION.

       PROGRAM-ID.  DLLTEST.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77  XL   PIC 9(3).

       77  YL   PIC 9(3).

       77  ZL   PIC 9(3).

       77  XD   PIC 9(3).

       77  YD   PIC 9(3).

       77  ZD   PIC 9(3).

       77  STR  PIC X(80).

       77  LEN  PIC 9(3).

       PROCEDURE DIVISION.

           CALL "./mydll.dll"

           MOVE 2 TO XL

           MOVE 3 TO YL

           CALL "multiply_long"

             USING BY VALUE XL, YL

                   BY REFERENCE ZL

             GIVING RETURN-CODE

           END-CALL

           DISPLAY XL "x" YL "=" ZL

           MOVE 1.2 TO XD,

           MOVE 3.4 TO YD

     *> DOUBLE data items cannot be passed BY VALUE.

           CALL "multiply_double"

             USING BY REFERENCE XD, YD, ZD

             GIVING RETURN-CODE

           END-CALL

           DISPLAY XD "x" YD "=" ZD

           MOVE ZEROS TO STR

           MOVE 13 TO LEN

           CALL "get_string"

             USING BY REFERENCE STR

             BY VALUE LEN

             GIVING RETURN-CODE

           END-CALL

           DISPLAY STR(1:LEN)

           CANCEL "mydll.dll"

           GOBACK.
