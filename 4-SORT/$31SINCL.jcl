//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT THE RECORD WITH INCLUDE CONDITION
//*       16th Char, Length 4 and Ascending order
//* COPY ONLY RECORD Which
//*       Do not have "NOT" at 21st Position 
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
  HELLO RECORD 0001 NOT MATCH   ABCD
  HELLO RECORD 0002 NOT MATCH   AACD
  HELLO RECORD 0003 TOTAL MATCH ABCD
  HELLO RECORD 0004 NON MATCH   BDDE
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
    SORT FIELDS=COPY
    INCLUDE COND=(21,3,CH,NE,C'NOT')
/*