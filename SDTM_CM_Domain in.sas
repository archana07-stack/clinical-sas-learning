/* Project 6: SDTM CM Domain */

/* Create Concomitant Medication Dataset */

data CM;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           CMTRT $30
           CMDECOD $30
           CMDOSU $10
           CMROUTE $15
           CMSTDTC $10
           CMENDTC $10;

    input STUDYID $
          USUBJID $
          CMSEQ
          CMTRT $
          CMDECOD $
          CMDOSE
          CMDOSU $
          CMROUTE $
          CMSTDTC $
          CMENDTC $;

    DOMAIN = "CM";

    datalines;
ST001 SUB001 1 Paracetamol Paracetamol 500 MG ORAL 2026-01-01 2026-01-03
ST001 SUB002 1 Ibuprofen Ibuprofen 200 MG ORAL 2026-01-02 2026-01-04
ST001 SUB003 1 Cetirizine Cetirizine 10 MG ORAL 2026-01-03 2026-01-05
ST001 SUB004 1 Amoxicillin Amoxicillin 500 MG ORAL 2026-01-04 2026-01-08
ST001 SUB005 1 VitaminD VitaminD 1000 IU ORAL 2026-01-05 2026-01-10
;

run;

/* Display CM Dataset */

proc print data=CM;
run;
