/* Project 13: SDTM PR Domain */

/* Create Procedures Dataset */

data PR;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           PRTRT $30
           PRDECOD $30
           PRCAT $20
           PRSTDTC $10;

    input STUDYID $
          USUBJID $
          PRSEQ
          PRTRT $
          PRDECOD $
          PRCAT $
          PRSTDTC $;

    DOMAIN = "PR";

    datalines;
ST001 SUB001 1 Chest_Xray Chest_Xray DIAGNOSTIC 2026-01-01
ST001 SUB002 1 Biopsy Biopsy DIAGNOSTIC 2026-01-02
ST001 SUB003 1 Endoscopy Endoscopy DIAGNOSTIC 2026-01-03
ST001 SUB004 1 Surgery Surgery THERAPEUTIC 2026-01-04
ST001 SUB005 1 ECG ECG DIAGNOSTIC 2026-01-05
;

run;

/* Display PR Dataset */

proc print data=PR;
run;
