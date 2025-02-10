//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* PENDING TO TEST
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT IF CONDITION
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//SORTIN   DD   *
123456789012345 ---> Column
HEADRselect
DETAL
TRIALselect
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  INREC  IFTHEN=(WHEN=(6,1,CH,NE,C' '),BUILD=(1:1,15)),
         IFTHEN=(WHEN=(6,1,CH,EQ,C' '),BUILD=(1:1,5,7:C'RECORD'))
  OPTION COPY
/*