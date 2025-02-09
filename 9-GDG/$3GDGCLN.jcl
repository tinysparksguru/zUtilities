//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//* CLEANUP ALL ASSOCIATE GENERATION DATASET GROUP GENERATION 
//* NOTE: THIS WILL ONLY REMOVE THE ASSOCIATED GENERATION.                 
//* WHERE WE HAD NOSCRATCH, THE UNASSOCIATE GENERATION WITH THIS WILL
//* STAY
//* ******************************************************************
//DELETEG    PROC GDGNM=GDG1
//DELETE2 EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                                        
//DD1        DD DSN=&SYSUID..IBMUTILM.&GDGNM,
//           DISP=(OLD,DELETE,DELETE) 
//           PEND
//ALLGDG1    EXEC PROC=DELETEG,GDGNM=GDG1  
//ALLGDG2    EXEC PROC=DELETEG,GDGNM=GDG2  
//ALLGDG3    EXEC PROC=DELETEG,GDGNM=GDG3  
//ALLGDG4    EXEC PROC=DELETEG,GDGNM=GDG4  
//ALLGDG5    EXEC PROC=DELETEG,GDGNM=GDG5