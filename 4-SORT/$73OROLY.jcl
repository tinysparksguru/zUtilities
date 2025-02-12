//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT THE RECORD WITH OUTREC OVERLAY
//* UNLIKE 
//* OVERLAY=(C:P,M...) C=>OUTPUT POS,P=>INPUT POS,M=>LENGTH
//*         (P,M..)    P=>INPUT POS,M=>LENGTH
//***************************************************************** 
//GENPS1   EXEC PGM=IEBGENER
//******10********20********30********40********50********60********70
//* 1-10 EMP NAME  15-20 EMP SALARY 35-45 EMP DESIGNATION 
//SYSUT1   DD *
NAME  AA      50000     DSADA     ENGINEER
NAME  XX      43500     DADAD     MANAGER
NAME  YY      23241     ASDAA     SWEEPER
NAME  ZZ      25343     DADAD     ACCOUNTANT
/*
//SYSUT2   DD DSN=&&TEMPPS1,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)    
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//***************************************************************** 
//* OVERLAY FIELD
//* COPY ALL THE RECORD AS IS JUST OVERLAY JUNK DATA AT 25-30 WITH
//* PUNE CITY
//***************************************************************** 
//STEP1 EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC OVERLAY=(25:C'PUNE ')
/*
//***************************************************************** 
//* OVERLAY FIELD
//* COPY ALL THE RECORD AS IS JUST OVERLAY JUNK DATA AT 25-35 WITH
//* DESIGNATION PRESENT AT 35-45. IT WILL DUPLICATE THE DESIGNATION
//***************************************************************** 
//STEP2 EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=COPY
  OUTREC OVERLAY=(25:35,10)
/*