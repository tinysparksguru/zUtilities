//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//*****************************************************************
//* COPY DATA FROM SORTIN TO SORTOUT 
//* SORT IF THEN CONDITION
//* CAN BE USED IN BOTH INREC/OUTREC
//*****************************************************************
//STEP1 EXEC PGM=SORT
//******10********20********30********40********50********60********70
//* 1-10 EMP NAME  15-20 EMP SALARY 35-45 EMP DESIGNATION 
//SORTIN   DD *
NAME  AA      50000     DSADA     ENGINEER
NAME  XX      43500     DADAD     MANAGER
NAME  YY      23241     ASDAA     SWEEPER
NAME  ZZ      25343     DADAD     ACCOUNTANT
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//* MOVE ALL ENGINEER TO PUNE, ACCOUNTANT TO MUMBAI
//* FOR OTHER STAFF MARK NA
//SYSIN    DD   *
  INREC  IFTHEN=(WHEN=(35,8,CH,EQ,C'ENGINEER'),    -
          OVERLAY=(25:C'PUNE ')),                  -
         IFTHEN=(WHEN=(35,10,CH,EQ,C'ACCOUNTANT'), -
          OVERLAY=(25:C'MUMBAI')),                 -    
         IFTHEN=(WHEN=NONE,OVERLAY=(25:C'NA   '))      
  OPTION COPY
/*