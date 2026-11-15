/* Project 9: SDTM VS Domain */

/* Create Vital Signs Dataset */

data VS;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           VSTEST $30
           VSTESTCD $8
           VSORRESU $10
           VSSTRESU $10
           VSDTC $10;

    input STUDYID $
          USUBJID $
          VSSEQ
          VSTEST $
          VSTESTCD $
          VSORRES
          VSORRESU $
          VSSTRESN
          VSSTRESU $
          VSDTC $;

    DOMAIN = "VS";

    datalines;
ST001 SUB001 1 SystolicBP SYSBP 120 mmHg 120 mmHg 2026-01-01
ST001 SUB002 1 DiastolicBP DIABP 80 mmHg 80 mmHg 2026-01-02
ST001 SUB003 1 HeartRate HR 72 bpm 72 bpm 2026-01-03
ST001 SUB004 1 Temperature TEMP 37 C 37 C 2026-01-04
ST001 SUB005 1 RespiratoryRate RESP 18 breaths/min 18 breaths/min 2026-01-05
;

run;

/* Display VS Dataset */

proc print data=VS;
run;
