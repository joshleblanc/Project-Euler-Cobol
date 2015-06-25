        IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO-WORLD.
        DATA DIVISION.
            WORKING-STORAGE SECTION.
            01  SUM   PIC 999999.
            01  CURRNUM PIC 999999999999 VALUE 600851475143.
            01  LOOP.
                02 FACTOR PIC 9999 VALUE 2.
            02 IND PIC 9999 VALUE 0.
            02 MAX PIC 9999 VALUE 1000.
            02 REM PIC 9999.
            02 ANS PIC 9999.
                02 TMP PIC 9999999999999999.
        PROCEDURE DIVISION.
        MAIN-PARA.
            PERFORM MAIN-LOOP UNTIL CURRNUM = 1.
            DISPLAY FACTOR.
            ACCEPT SUM.
            STOP RUN.
        MAIN-LOOP.
            DIVIDE CURRNUM BY FACTOR GIVING TMP REMAINDER REM.
            IF REM > 0 THEN
                ADD 1 TO FACTOR
            ELSE
                SET CURRNUM TO TMP
            END-IF.
            ADD 1 TO IND.