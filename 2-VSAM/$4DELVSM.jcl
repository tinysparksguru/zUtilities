//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* DELETE VSAM ESDS, KSDS, RRDS                      
//*******************************************************************
//DLETESDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
  DELETE (SHRDV06.IBMUTILM.VSAMESDS)
/*
//DLETKSDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
  DELETE (SHRDV06.IBMUTILM.VSAMKSDS)
/*
//DLETRRDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
  DELETE (SHRDV06.IBMUTILM.VSAMRRDS)
/*