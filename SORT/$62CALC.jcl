//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* Sum up the expenses (field at position 35-40) if records are same
//*****************************************************************
//STEP1 EXEC PGM=SORT
//*-+----1----+----2----+----3----+----4----+----5
//SORTIN   DD   *
  HELLO RECORD 0001 NOT MATCH      00040
  HELLO RECORD 0002 NOT MATCH      00030
  HELLO RECORD 0003 TOTAL MATCH    00020
  HELLO RECORD 0004 NON MATCH      00010
  HELLO RECORD 0002 NOT MATCH      00050
  HELLO RECORD 0004 NON MATCH      00070
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=(1,35,CH,A)
  SUM FIELDS=(36,5,ZD)
/*