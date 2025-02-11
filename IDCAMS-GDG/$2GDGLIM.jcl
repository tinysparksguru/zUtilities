//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID
//* ******************************************************************
//* ALLOCATE GENERATION DATASET GROUP GENERATION. 
//* 1 MORE THAN THE SET LIMIT                     
//* ******************************************************************
//ALLOCGEN   PROC GDGNM=GDG1
//ALLOCATE EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                              
//SYSDUMP    DD SYSOUT=*                                              
//DD1        DD DSN=&SYSUID..IBMUTILM.&GDGNM(+1),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//DD2        DD DSN=&SYSUID..IBMUTILM.&GDGNM(+2),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//DD3        DD DSN=&SYSUID..IBMUTILM.&GDGNM(+3),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//DD4        DD DSN=&SYSUID..IBMUTILM.&GDGNM(+4),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//DD5        DD DSN=&SYSUID..IBMUTILM.&GDGNM(+5),SPACE=(TRK,(1,1)),        
//           DISP=(NEW,CATLG,DELETE),                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//           PEND
//ALLGDG1    EXEC PROC=ALLOCGEN,GDGNM=GDG1  
//ALLGDG2    EXEC PROC=ALLOCGEN,GDGNM=GDG2  
//ALLGDG3    EXEC PROC=ALLOCGEN,GDGNM=GDG3  
//ALLGDG4    EXEC PROC=ALLOCGEN,GDGNM=GDG4  
//ALLGDG5    EXEC PROC=ALLOCGEN,GDGNM=GDG5          