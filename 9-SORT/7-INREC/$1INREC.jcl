//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* PENDING TO TEST
//* COPY DATA FROM SORTIN TO SORTOUT 
//* OVERWRITE INPUT RECORD CONTENT
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
  HELLO RECORD 0001 NOT MATCH
  HELLO RECORD 0002 NOT MATCH
  HELLO RECORD 0003 TOTAL MATCH
  HELLO RECORD 0004 NON MATCH
  HELLO RECORD 0002 NOT MATCH
  HELLO RECORD 0004 NON MATCH
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  OPTION COPY
  INREC OVERLAY=(47:1,6)
/*