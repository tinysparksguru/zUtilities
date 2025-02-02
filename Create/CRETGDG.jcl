//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID
//* ******************************************************************
//*  ALLOCATE GENERATION DATASET GROUP                                  
//*                                                                   
//*  THINGS TO UNDERSTAND AND MODIFY:                                 
//*    NAME    = THE NAME OF YOUR DATA SET                           
//*    LIMIT   = 
//*    NOEMPTY =                                     
//*    SCRATCH =                                            
//* ******************************************************************
//ALLOCATE EXEC PGM=IDCAMS                                         
//SYSPRINT   DD SYSOUT=*                                                        
//SYSIN      DD *  
    DEFINE GDG(NAME(Z55249.TEST.GDG) - 
              LIMIT(12)              -
              NOEMPTY                -  
              SCRATCH)
/*       