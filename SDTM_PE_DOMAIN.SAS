/* Project 12: SDTM PE Domain */

/* Create Physical Examination Dataset */

data PE;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           PETESTCD $8
           PETEST $30
           PECAT $20
           PEORRES $20
           PEDTC $10;

    input STUDYID $
          USUBJID $
          PESEQ
          PETESTCD $
          PETEST $
          PECAT $
          PEORRES $
          PEDTC $;

    DOMAIN = "PE";

    datalines;
ST001 SUB001 1 SKIN Skin NORMAL GENERAL 2026-01-01
ST001 SUB002 1 EYE Eye NORMAL GENERAL 2026-01-02
ST001 SUB003 1 HEART Heart NORMAL CARDIOVASCULAR 2026-01-03
ST001 SUB004 1 LUNG Lung NORMAL RESPIRATORY 2026-01-04
ST001 SUB005 1 ABDOMEN Abdomen NORMAL GENERAL 2026-01-05
;

run;

/* Display PE Dataset */

proc print data=PE;
run;
