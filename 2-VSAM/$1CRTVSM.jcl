//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* ALLOCATE VSAM ESDS, KSDS, RRDS                      
//*******************************************************************
//CRETESDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
        DEFINE CLUSTER (                                 -
                    NAME(SHRDV06.IBMUTILM.VSAMESDS)      -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    VOLUMES(ZASYS1)                      -
                    NONINDEXED)                          
/*
//CRETKSDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
        DEFINE CLUSTER (                                 -
                    NAME(SHRDV06.IBMUTILM.VSAMKSDS)      -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    INDEXED                              -
                    VOLUMES(ZASYS1)                      -
                    KEYS(6 0))
/*
//CRETRRDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
        DEFINE CLUSTER (                                 -
                    NAME(SHRDV06.IBMUTILM.VSAMRRDS)      -
                    TRACKS(2 1)                          -
                    RECORDSIZE(80 80)                    -
                    FREESPACE(5 5)                       -
                    CISZ(4096)                           -
                    VOLUMES(ZASYS1)                      -
                    NUMBERED)
/*