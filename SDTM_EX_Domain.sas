/* Project 7: SDTM EX Domain */

/* Create Exposure Dataset */

data EX;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           EXTRT $30
           EXDOSU $10
           EXROUTE $15
           EXSTDTC $10
           EXENDTC $10;

    input STUDYID $
          USUBJID $
          EXSEQ
          EXTRT $
          EXDOSE
          EXDOSU $
          EXROUTE $
          EXSTDTC $
          EXENDTC $;

    DOMAIN = "EX";

    datalines;
ST001 SUB001 1 DrugA 500 MG ORAL 2026-01-01 2026-01-05
ST001 SUB002 1 DrugA 250 MG ORAL 2026-01-02 2026-01-06
ST001 SUB003 1 DrugA 500 MG ORAL 2026-01-03 2026-01-07
ST001 SUB004 1 DrugA 100 MG ORAL 2026-01-04 2026-01-08
ST001 SUB005 1 DrugA 250 MG ORAL 2026-01-05 2026-01-09
;

run;

/* Display EX Dataset */

proc print data=EX;
run;
