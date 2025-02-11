//Z55249N  JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID,TYPRUN=HOLD                 
//* SHOWS HOLD PROCESS. JUST TO SHOW SUBMIT AND CANCEL JOB                  
//ALLOCAT2 EXEC PGM=IEFBR14                                                     
//DD1        DD DSN=&SYSUID..IBMUTILS.TYPRUND,          
//           DISP=(NEW,CATLG,DELETE),SPACE=(TRK,(1,1),RLSE),                    
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  