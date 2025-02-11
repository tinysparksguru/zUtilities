//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID  
//****************************************************************
//** CREATE NEW PS AND PDS          
//****************************************************************
//CREATE   EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                                        
//PS         DD DSN=&SYSUID..IBMUTILM.TESTPS1,                       
//           DISP=(NEW,CATLG,DELETE),                                 
//           SPACE=(TRK,(1,1)),                                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//PDS        DD DSN=&SYSUID..IBMUTILM.TESTPDS1,                       
//           DISP=(NEW,CATLG,DELETE),                                 
//           SPACE=(TRK,(1,1)),                                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//****************************************************************
//** CREATE AND DELETE NEW PS AND PDS   
//****************************************************************
//DELETENW   EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                 
//PS         DD DSN=&SYSUID..IBMUTILM.TESTPS2,                       
//           DISP=(NEW,DELETE,DELETE),                                 
//           SPACE=(TRK,(1,1)),                                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//PDS        DD DSN=&SYSUID..IBMUTILM.TESTPDS2,                       
//           DISP=(NEW,DELETE,DELETE),                                 
//           SPACE=(TRK,(1,1)),                                                 
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//****************************************************************
//** DELETE EXISTING PS AND PDS 
//****************************************************************
//DELETEEX   EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                 
//PS         DD DSN=&SYSUID..IBMUTILM.TESTPS1,                       
//           DISP=(OLD,DELETE,DELETE)  
//PDS        DD DSN=&SYSUID..IBMUTILM.TESTPDS1,                       
//           DISP=(OLD,DELETE,DELETE)
//****************************************************************
//** CREATE IF NOT EXIST AND THEN DELETE PS AND PDS
//** IF EXISTS JUST DELETE PS AND PDS
//****************************************************************
//DELETEE1   EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                 
//PS         DD DSN=&SYSUID..IBMUTILM.TESTPS1,                       
//           DISP=(MOD,DELETE,DELETE),SPACE=(TRK,(1,1))  
//PDS        DD DSN=&SYSUID..IBMUTILM.TESTPDS1,                       
//           DISP=(MOD,DELETE,DELETE),SPACE=(TRK,(1,1))