/* Project 11: SDTM DS Domain */

/* Create Disposition Dataset */

data DS;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           DSTERM $30
           DSCAT $20
           DSDECOD $30
           DSSTDTC $10;

    input STUDYID $
          USUBJID $
          DSSEQ
          DSCAT $
          DSTERM $
          DSDECOD $
          DSSTDTC $;

    DOMAIN = "DS";

    datalines;
ST001 SUB001 1 DISPOSITION Completed COMPLETED 2026-01-10
ST001 SUB002 1 DISPOSITION Withdrawn WITHDRAWN 2026-01-11
ST001 SUB003 1 DISPOSITION Discontinued DISCONTINUED 2026-01-12
ST001 SUB004 1 DISPOSITION Completed COMPLETED 2026-01-13
ST001 SUB005 1 DISPOSITION LostFollowUp LOST_TO_FOLLOW_UP 2026-01-14
;

run;

/* Display DS Dataset */

proc print data=DS;
run;
