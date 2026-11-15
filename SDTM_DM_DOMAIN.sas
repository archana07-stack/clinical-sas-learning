/* Project 4: SDTM DM Domain */

/* Create Demographics Dataset */

data DM;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           SEX $1
           COUNTRY $3;

    input STUDYID $
          USUBJID $
          AGE
          SEX $
          COUNTRY $;

    DOMAIN = "DM";

    datalines;
ST001 SUB001 25 F IND
ST001 SUB002 30 M IND
ST001 SUB003 22 F IND
ST001 SUB004 28 M IND
ST001 SUB005 35 F IND
;

run;

/* Display DM Dataset */

proc print data=DM;
run;
