//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//* ALLOCATE GENERATION DATASET GROUP BASE                      
//* ******************************************************************
//ALLOCAT1 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    DEFINE GDG(NAME(&SYSUID..IBMUTILM.GDG1) - 
              LIMIT(4))
/*       
//ALLOCAT2 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    DEFINE GDG(NAME(&SYSUID..IBMUTILM.GDG2) - 
              LIMIT(4)                      -
              EMPTY                         -
              SCRATCH)
/* 
//ALLOCAT3 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    DEFINE GDG(NAME(&SYSUID..IBMUTILM.GDG3) - 
              LIMIT(4)                      -
              EMPTY                         -
              NOSCRATCH)
/* 
//ALLOCAT4 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    DEFINE GDG(NAME(&SYSUID..IBMUTILM.GDG4) - 
              LIMIT(4)                      -
              NOEMPTY                       -
              SCRATCH)
/* 
//ALLOCAT5 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    DEFINE GDG(NAME(&SYSUID..IBMUTILM.GDG5) - 
              LIMIT(4)                      -
              NOEMPTY                       -
              NOSCRATCH)
/*