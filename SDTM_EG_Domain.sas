/* Project 14: SDTM EG Domain */

/* Create ECG Dataset */

data EG;

    length STUDYID $8
           DOMAIN $2
           USUBJID $15
           EGTEST $30
           EGTESTCD $8
           EGORRESU $10
           EGSTRESU $10
           EGDTC $10;

    input STUDYID $
          USUBJID $
          EGSEQ
          EGTEST $
          EGTESTCD $
          EGORRES
          EGORRESU $
          EGSTRESN
          EGSTRESU $
          EGDTC $;

    DOMAIN = "EG";

    datalines;
ST001 SUB001 1 HeartRate HR 72 bpm 72 bpm 2026-01-01
ST001 SUB002 1 PRInterval PR 160 ms 160 ms 2026-01-02
ST001 SUB003 1 QRSDuration QRS 90 ms 90 ms 2026-01-03
ST001 SUB004 1 QTInterval QT 380 ms 380 ms 2026-01-04
ST001 SUB005 1 QTcInterval QTC 420 ms 420 ms 2026-01-05
;

run;

/* Display EG Dataset */

proc print data=EG;
run;
