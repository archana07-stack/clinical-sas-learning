/* Project 8: SDTM LB Domain */

/* Create Laboratory Dataset */

data LB;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           LBTEST $30
           LBTESTCD $8
           LBORRES $12
           LBORRESU $12
           LBSTRESC $12
           LBSTRESU $12
           LBDTC $10;

    input STUDYID $
          USUBJID $
          LBSEQ
          LBTEST $
          LBTESTCD $
          LBORRES $
          LBORRESU $
          LBSTRESC $
          LBSTRESN
          LBSTRESU $
          LBDTC $;

    DOMAIN = "LB";

    datalines;
ST001 SUB001 1 Hemoglobin HGB 13.5 g/dL 13.5 13.5 g/dL 2026-01-01
ST001 SUB002 1 Glucose GLUC 95 mg/dL 95 95 mg/dL 2026-01-02
ST001 SUB003 1 WBC WBC 7500 cells/uL 7500 7500 cells/uL 2026-01-03
ST001 SUB004 1 Platelets PLAT 250000 cells/uL 250000 250000 cells/uL 2026-01-04
ST001 SUB005 1 Creatinine CREAT 0.9 mg/dL 0.9 0.9 mg/dL 2026-01-05
;

run;

/* Display LB Dataset */

proc print data=LB;
run;
