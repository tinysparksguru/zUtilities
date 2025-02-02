//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID
//* ******************************************************************
//*  ALLOCATE PS SEQUENTIAL FILE                                      
//*                                                                   
//*  THINGS TO UNDERSTAND AND MODIFY:                                  
//*    DSN=     THE NAME OF YOUR DATA SET                             
//*    SPACE=   CYLINDERS OR TRACKS YOU WANT TO ALLOCATE              
//*             X = PRIMARY QUANTITY (HOW MANY TO ALLOCATE)           
//*             Y = SECONDARY QUANTITY (HOW MANY IF MORE SPACE NEEDED)
//*    LRECL=   RECORD LENGTH                                         
//*    BLKSIZE= BLOCK SIZE                                            
//* ******************************************************************
//ALLOCATE EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                              
//SYSDUMP    DD SYSOUT=*                                              
//DD1        DD DSN=Z55249.TEST.PS,      <= CHANGE ME                 
//           DISP=(NEW,CATLG,DELETE),                                 
//           SPACE=(TRK,(1,1),RLSE),     <= CHANGE ME                 
//           UNIT=SYSDA,                                              
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=800)  