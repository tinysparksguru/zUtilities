//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SPLIT A DATASET INTO EQUAL PARTS
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
  HELLO RECORD 0001 NOT MATCH   ABCD
  HELLO RECORD 0002 NOT MATCH   AACD
  HELLO RECORD 0003 TOTAL MATCH ABCD
  HELLO RECORD 0004 NON MATCH   BDDE
/*
//SORTOF01  DD   SYSOUT=*
//SORTOF02  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  OPTION COPY
  OUTFIL FILES=(01,02),SPLIT
/*