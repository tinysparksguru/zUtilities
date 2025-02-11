//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT A SINGLE FIELD
//*       16th Char, Length 4 and Ascending order,
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
  HELLO RECORD 0001 NOT MATCH   ABCD
  HELLO RECORD 0004 NOT MATCH   AACD
  HELLO RECORD 0003 TOTAL MATCH ABCD
  HELLO RECORD 0002 NON MATCH   BDDE
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
         SORT FIELDS=(16,4,CH,A)
/*