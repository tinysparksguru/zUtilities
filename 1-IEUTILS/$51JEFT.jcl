//SHRDV06A  JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID     
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
//SYSTSIN  DD *
  ALLOCATE DA('SHRDV06.TSOTEST.DATASET') - 
  DSORG(PS) SPACE(2,2) TRACKS LRECL(80) RECFM(F,B) NEW
/*
//**************************************************************** 
//* EXECUTE REXX.
//* EXECRX - SUBMIT REXX
//**************************************************************** 
//EXECRX EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  EXEC 'SHRDV06.ZAAP.TOP2SES3.EXEC(WAITREXX)'
/*
//**************************************************************** 
//* DELETE DATASET
//**************************************************************** 
//DELET1 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  DELETE 'SHRDV06.TSOTEST.DATASET' SCRATCH 
/*
//**************************************************************** 
//* SUBMIT WAIT JOB OF PREVIOUSLY CREATE REXX
//* PREP1 - Prepare step to create a REXX
//* EXECRX - SUBMIT REXX
//**************************************************************** 
//SUBMIT EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  SUBMIT ('SHRDV06.ZAAP.TOP3SES1.JCLS($52JEFTJ)') 
/*
//CANCEL EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  CANCEL SHRDV06N
/*