/* Project 5: SDTM AE Domain */

/* Create Adverse Events Dataset */

data AE;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           AETERM $40
           AEDECOD $40
           AESEV $8
           AESER $1
           AEACN $15
           AEOUT $15;

    input STUDYID $
          USUBJID $
          AESEQ
          AETERM $
          AEDECOD $
          AESEV $
          AESER $
          AEACN $
          AEOUT $;

    DOMAIN = "AE";

    datalines;
ST001 SUB001 1 Headache Headache MILD N NONE RECOVERED
ST001 SUB002 1 Fever Pyrexia MODERATE N TREATMENT RECOVERED
ST001 SUB003 1 Nausea Nausea MILD N NONE RECOVERED
ST001 SUB004 1 Vomiting Vomiting SEVERE Y TREATMENT RECOVERED
ST001 SUB005 1 Rash Rash MODERATE N TREATMENT RECOVERED
;

run;

/* Display AE Dataset */

proc print data=AE;
run;
