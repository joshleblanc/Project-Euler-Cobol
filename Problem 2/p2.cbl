        IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO-WORLD.
        DATA DIVISION.
        	WORKING-STORAGE SECTION.
        	01	SUM	PIC 9999999 VALUE 0.
        	01	LOOP.
        		02 FIRS PIC 9999999 VALUE 1.
        		02 SECO PIC 9999999 VALUE 2.
                02 REM PIC 9999999.
                02 TMP PIC 9999999.
        		02 ANS PIC 9999999.
        PROCEDURE DIVISION.
        MAIN-PARA.
        	PERFORM MAIN-LOOP UNTIL ANS >= 4000000.
            ADD 2 TO SUM.
            DISPLAY SUM.
        	ACCEPT SUM.
            STOP RUN.
        MAIN-LOOP.
            SET ANS TO FIRS.
            ADD SECO TO ANS.
            DIVIDE ANS BY 2 GIVING TMP REMAINDER REM.
            IF REM = 0 THEN
                ADD ANS TO SUM
            END-IF.
            SET FIRS TO SECO.
            SET SECO TO ANS.
