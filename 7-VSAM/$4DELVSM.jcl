//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* DELETE VSAM ESDS, KSDS, RRDS                      
//*******************************************************************
//DLETESDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
  DELETE (&SYSUID..IBMUTILM.VSAMESDS)
/*
//DLETKSDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
  DELETE (&SYSUID..IBMUTILM.VSAMKSDS)
/*
//DLETRRDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
  DELETE (&SYSUID..IBMUTILM.VSAMRRDS)
/*