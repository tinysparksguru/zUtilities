//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT THE RECORD WITH OUTREC FIELDS/BUILD
//* FIELDS|BUILD = (C:P,M...) C=>OUTPUT POS,P=>INPUT POS,M=>LENGTH
//*                (P,M..)    P=>INPUT POS,M=>LENGTH
//***************************************************************** 
//GENPS1   EXEC PGM=IEBGENER
//******10********20********30********40********50********60********70
//* 1-10 EMP NAME  15-20 EMP SALARY 35-45 EMP DESIGNATION 
//SYSUT1   DD *
NAME  AA      50000   ZADSAD      ENGINEER
NAME  XX      43500   SADADA      MANAGER
NAME  YY      23241   ADASDA      SWEEPER
NAME  ZZ      25343   ASDADAD     ACCOUNTANT
/*
//SYSUT2   DD DSN=&&TEMPPS1,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)    
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//***************************************************************** 
//* OUTREC FIELD
//* COPY 1-10, THEN 15-20
//***************************************************************** 
//STEP1 EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC FIELDS=(1,10,15,5)
/*
//***************************************************************** 
//* OUTREC BUILD
//* COPY 1-10 AT 1ST POSITION AND 15-20 AT 20TH POSITION
//***************************************************************** 
//STEP2 EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC BUILD=(1:1,10,20:15,5)
/*  
//***************************************************************** 
//* OUTREC BUILD
//* COPY 1-10, THEN ADD TOTAL, THEN 5 ZERO, THEN 15-20
//***************************************************************** 
//STEP3 EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC FIELDS=(1,10,C'TOTAL',5Z,15,5)
/*              