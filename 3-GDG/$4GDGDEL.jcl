//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* DELETE GENERATION DATASET GROUP BASE
//* ALSO DELETE MANUALLY ANY LEFT OVER UNASSOCIATE GENERATION                   
//*******************************************************************
//DELETE1 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DELETE (SHRDV06.IBMUTILM.GDG1)  - 
          GDG                          -
          FORCE
/*
//DELETE2 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DELETE (SHRDV06.IBMUTILM.GDG2)  - 
          GDG                          -
          FORCE
/*
//DELETE3 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DELETE (SHRDV06.IBMUTILM.GDG3)  - 
          GDG                          -
          FORCE
/*
//DELETE4 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DELETE (SHRDV06.IBMUTILM.GDG4)  - 
          GDG                          -
          FORCE
/*
//DELETE5 EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DELETE (SHRDV06.IBMUTILM.GDG5)  - 
          GDG                          -
          FORCE
/*