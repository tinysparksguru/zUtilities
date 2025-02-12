//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* COPY A DATASET USING SORT OUTREC WITH FIND AND REP
//***************************************************************** 
//STEP1 EXEC PGM=SORT
//SORTIN   DD   *
NAME  AA      50000   ZADSAD      ENGINEER
NAME  XX      43500   SADADA      MANAGER
NAME  CC      23241   ADASDA      SWEEPER
NAME  ZZ      25343   ASDADAD     ACCOUNTANT
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC FINDREP=(IN=C'SWEEPER',OUT=C'CLEANER')
/*