//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//*  DELETE SINGLE GENERATION DATASET GROUP GENERATION                          
//* ******************************************************************
//DELETE1 EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                                        
//DD1        DD DSN=&SYSUID..IBMUTILM.GDG1(0),
//           DISP=(OLD,DELETE,DELETE)
//DD2        DD DSN=&SYSUID..IBMUTILM.GDG2.G0001V00,
//           DISP=(OLD,DELETE,DELETE)
//DD3        DD DSN=&SYSUID..IBMUTILM.GDG3(-1),
//           DISP=(OLD,DELETE,DELETE)          