//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//* ******************************************************************
//*  RERUN $1GDGCRT BEFORE RUNNING THIS
//*  ALLOCATE GENERATION DATASET GROUP GENERATION                               
//* ******************************************************************
//ALLOCAT1 EXEC PGM=IEFBR14
//DD1        DD DSN=&SYSUID..IBMUTILM.GDG1(+1),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//* NOTE: THIS WORKS IN Z XPLORER AND NOT ON TRAINING SYSTEM
//DD2        DD DSN=&SYSUID..IBMUTILM.GDG1(+1),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)                                
//*
//DD3        DD DSN=&SYSUID..IBMUTILM.GDG2(+1),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//DD4        DD DSN=&SYSUID..IBMUTILM.GDG2(+2),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800) 
//*                                          
//DD5        DD DSN=&SYSUID..IBMUTILM.GDG3(+2),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//DD6        DD DSN=&SYSUID..IBMUTILM.GDG3(+3),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)