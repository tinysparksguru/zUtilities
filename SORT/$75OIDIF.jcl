//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//***************************************************************** 
//GENPS1   EXEC PGM=IEBGENER
//******10********20********30********40********50********60********70
//* 1-10 EMP NAME  15-20 EMP SALARY 35-45 EMP DESIGNATION 
//SYSUT1   DD *
NAME  AA      50000     DSADA     ENGINEER
NAME  XX      43500     DADAD     MANAGER
NAME  CC      23241     ASDAA     SWEEPER
NAME  FF      25343     DADAD     ACCOUNTS
/*
//SYSUT2   DD DSN=&&TEMPPS1,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)    
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//***************************************************************** 
//* INREC OVERLAY FIELD
//* COPY ALL THE RECORD AS IS JUST OVERLAY 46-50 AS SEQUENCE NUMBER
//* WATCH FOR SEQUENCE NUMBER 1 > 3 > 4 > 2
//***************************************************************** 
//INRECOV EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=(1,10,CH,A)
  INREC OVERLAY=(46:SEQNUM,5,ZD)
/*
//***************************************************************** 
//* OUTREC OVERLAY FIELD
//* COPY ALL THE RECORD AS IS JUST OVERLAY 46-50 AS SEQUENCE NUMBER
//* WATCH FOR SEQUENCE NUMBER 1 > 2 > 3 > 4
//***************************************************************** 
//OUTRECOV EXEC PGM=SORT
//SORTIN   DD DSN=&&TEMPPS1,DISP=(OLD,PASS)
//SORTOUT  DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
  SORT FIELDS=(1,10,CH,A)
  OUTREC OVERLAY=(46:SEQNUM,5,ZD)
/*