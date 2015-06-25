        IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO-WORLD.
        DATA DIVISION.
            WORKING-STORAGE SECTION.
            01	SUM	PIC 999999.
            01  CURRNUM PIC 999999999999 VALUE 600851475143.
            01  MAX PIC 999999 VALUE 0.
            01  LOOP.
                02  I PIC 999 VALUE 999.
            01  ILOOP.
                02  TMP PIC 999999.
                02  S PIC X(6).
                02  RS PIC X(6).
                02  J PIC 999 VALUE 999.
        PROCEDURE DIVISION.
        MAIN-PARA.
            PERFORM MAIN-LOOP UNTIL I = 0. 
            DISPLAY MAX.
            ACCEPT SUM.
            STOP RUN.
        MAIN-LOOP.
            PERFORM INNER-LOOP UNTIL J = 0.
            SUBTRACT 1 FROM I.
            SET J TO I.
        INNER-LOOP
            SET TMP TO I.
            MULTIPLY J BY TMP.
            MOVE TMP TO S.
            MOVE FUNCTION REVERSE(S) TO RS.
            IF RS = S AND TMP > MAX THEN
                MOVE TMP TO MAX
            END-IF
            SUBTRACT 1 FROM J.
