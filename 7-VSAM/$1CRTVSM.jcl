//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* ALLOCATE VSAM ESDS, KSDS, RRDS                      
//*******************************************************************
//CRETESDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
        DEFINE CLUSTER (                                 -
                    NAME(&SYSUID..IBMUTILM.VSAMESDS)     -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    NONINDEXED)                          
/*
//CRETKSDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
        DEFINE CLUSTER (                                 -
                    NAME(&SYSUID..IBMUTILM.VSAMKSDS)     -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    INDEXED                              -
                    KEYS(6 0))
/*
//CRETRRDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=EXECSYS
        DEFINE CLUSTER (                                 -
                    NAME(&SYSUID..IBMUTILM.VSAMRRDS)     -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    NUMBERED)
/*