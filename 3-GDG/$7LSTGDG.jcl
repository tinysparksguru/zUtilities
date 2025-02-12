//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//* LIST ASSOCIATE GENERATION DATASET GROUP GENERATION                      
//* ******************************************************************
//LISTCAT1 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    LISTCAT                                -
           ENTRIES(SHRDV06.IBMUTILM.GDG1) - 
           ALL
/*       
//LISTCAT2 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    LISTCAT                                -
           ENTRIES(SHRDV06.IBMUTILM.GDG2) - 
           ALL
/* 
//LISTCAT3 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    LISTCAT                                -
           ENTRIES(SHRDV06.IBMUTILM.GDG3) - 
           ALL
/* 
//LISTCAT4 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    LISTCAT                                -
           ENTRIES(SHRDV06.IBMUTILM.GDG4) - 
           ALL
/* 
//LISTCAT5 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    LISTCAT                                -
           ENTRIES(SHRDV06.IBMUTILM.GDG5) - 
           ALL
/*