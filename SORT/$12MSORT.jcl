//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT MULTIPLE FIELD
//*       16th Char, Length 4 and Descending order And
//*       33rd Char, Length 4 and Descending order
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
  HELLO RECORD 0004 NOT MATCH   ABCD
  HELLO RECORD 0003 NOT MATCH   AACD
  HELLO RECORD 0002 TOTAL MATCH ABCD
  HELLO RECORD 0001 NON MATCH   BDDE
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//* FIELDS = (START POS, LENGTH, FORMAT, ORDER,...)
//SYSIN    DD   *
         SORT FIELDS=(16,4,CH,D,33,4,CH,D)
/*