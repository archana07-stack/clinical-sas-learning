/* Project 10: SDTM MH Domain */

/* Create Medical History Dataset */

data MH;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           MHTERM $40
           MHDECOD $40
           MHCAT $20
           MHOCCUR $1;

    input STUDYID $
          USUBJID $
          MHSEQ
          MHTERM $
          MHDECOD $
          MHCAT $
          MHOCCUR $;

    DOMAIN = "MH";

    datalines;
ST001 SUB001 1 Diabetes Diabetes METABOLIC Y
ST001 SUB002 1 Hypertension Hypertension CARDIAC Y
ST001 SUB003 1 Asthma Asthma RESPIRATORY Y
ST001 SUB004 1 Migraine Migraine NEUROLOGICAL Y
ST001 SUB005 1 Allergy Allergy IMMUNOLOGICAL Y
;

run;

/* Display MH Dataset */

proc print data=MH;
run;
