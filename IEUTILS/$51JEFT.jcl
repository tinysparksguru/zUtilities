//Z55249A  JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID     
//****************************************************************
//* EXECUTE Commonly Used TSO COMMANDS in BATCH
//* ALLOCATE - Allocate Dataset
//* DELETE - Delete Dataset
//* SUBMIT - Submit Job in Background
//* CANCEL - Cancel Job
//* EXEC - Execute REXX/CLIST
//**************************************************************** 
//* ALLOCATE DATASET
//**************************************************************** 
//ALLOCAT1 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
  ALLOCATE DA('&SYSUID..TSOTEST.DATASET') - 
  DSORG(PS) SPACE(2,2) TRACKS LRECL(80) RECFM(F,B) NEW
/*
//**************************************************************** 
//* EXECUTE REXX.
//* EXECRX - SUBMIT REXX
//**************************************************************** 
//EXECRX EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
  EXEC '&SYSUID..ZAAP.TOP2SES3.EXEC(WAITREXX)'
/*
//**************************************************************** 
//* DELETE DATASET
//**************************************************************** 
//DELET1 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
  DELETE '&SYSUID..TSOTEST.DATASET' SCRATCH 
/*
//**************************************************************** 
//* SUBMIT WAIT JOB OF PREVIOUSLY CREATE REXX
//* PREP1 - Prepare step to create a REXX
//* EXECRX - SUBMIT REXX
//**************************************************************** 
//SUBMIT EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
  SUBMIT ('&SYSUID..ZAAP.IBMUTILS.JCLS($52JEFTJ)') 
/*
//CANCEL EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
  CANCEL &SYSUID.N
/*