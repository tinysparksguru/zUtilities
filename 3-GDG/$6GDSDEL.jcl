//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//*  DELETE SINGLE GENERATION DATASET GROUP GENERATION                          
//* ******************************************************************
//DELETE1 EXEC PGM=IEFBR14
//DD1        DD DSN=&SYSUID..IBMUTILM.GDG1(0),
//           DISP=(OLD,DELETE,DELETE)
//DD2        DD DSN=&SYSUID..IBMUTILM.GDG2.G0001V00,
//           DISP=(OLD,DELETE,DELETE)
//DD3        DD DSN=&SYSUID..IBMUTILM.GDG3(-1),
//           DISP=(OLD,DELETE,DELETE)