//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID
//* ******************************************************************
//*  ALLOCATE PARTITIONED DATA SET MEMBER                                   
//*                                                                   
//*  THINGS TO UNDERSTAND AND MODIFY:                                 
//*    DSN=     THE NAME OF YOUR EXISTING PARTITIONED DATA SET                  
//* ******************************************************************
//STEP010 EXEC PGM=IEBGENER 
//SYSUT1 DD * 
//SYSUT2 DD DSN=Z55249.TEST.PDS(MEMBER1), <= CHANGE ME 
//       DISP=SHR  
//SYSIN DD DUMMY 
//SYSPRINT DD SYSOUT=*     