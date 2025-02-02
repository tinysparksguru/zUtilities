//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID                                                      
//* ***********************************************                     
//*  PRINT THE CONTENTS OF A MEMBER                                     
//*    USEFUL FOR PRINTING SOURCE CODE OF PROGRAMS                      
//* ***********************************************                     
//STEP1    EXEC PGM=IEBGENER                                            
//SYSPRINT DD SYSOUT=A                                                  
//SYSIN    DD DUMMY                                                     
//SYSUT1   DD DISP=SHR,DSNAME=Z55249.SRC(MYPGMSRC) <= CHANGE ME         
//SYSUT2   DD SYSOUT=A                                                  
//                                                                      
