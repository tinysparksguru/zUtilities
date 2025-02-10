//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//* LIST ASSOCIATE GENERATION DATASET GROUP GENERATION                      
//* ******************************************************************
//LISTCAT1 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    LISTCAT                                -
           ENTRIES(&SYSUID..IBMUTILM.GDG1) - 
           ALL
/*       
//LISTCAT2 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    LISTCAT                                -
           ENTRIES(&SYSUID..IBMUTILM.GDG2) - 
           ALL
/* 
//LISTCAT3 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    LISTCAT                                -
           ENTRIES(&SYSUID..IBMUTILM.GDG3) - 
           ALL
/* 
//LISTCAT4 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    LISTCAT                                -
           ENTRIES(&SYSUID..IBMUTILM.GDG4) - 
           ALL
/* 
//LISTCAT5 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *,SYMBOLS=EXECSYS  
    LISTCAT                                -
           ENTRIES(&SYSUID..IBMUTILM.GDG5) - 
           ALL
/*