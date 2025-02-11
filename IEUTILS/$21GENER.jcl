//SHRDV06A  JOB ,'SHRDV06',NOTIFY=&SYSUID                         
//****************************************************************
//* CLEANUP OLD DATASET AND CREATE NEW FOR FURTHER STEPS
//**************************************************************** 
//CREATE   EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=* 
//* PS FILE TO BE DELETED
//PS         DD DSN=&SYSUID..IBMUTILM.GENPS,DISP=(OLD,DELETE)
//* PDS FILE TO BE CLEANUP
//PDS        DD DSN=&SYSUID..IBMUTILM.GENPDS,                       
//           DISP=(MOD,CATLG,DELETE),SPACE=(TRK,(2,2,2)),                       
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//****************************************************************
//* MAKE A COPY OF PS FILE
//* HERE IN-STREAM DATA CAN BE REPLACED WITH PS FILE
//**************************************************************** 
//COPYPS   EXEC PGM=IEBGENER
//SYSUT1 DD *
HELLO, I AM THE DATA.
/*
//SYSUT2 DD DSN=&SYSUID..IBMUTILM.GENPS,
//          DISP=(MOD,CATLG,DELETE),SPACE=(TRK,(2,2)),
//          DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)  
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
//**************************************************************** 
//* COPY PS FILE TO PDS MEMBER    
//* HERE IN-STREAM DATA CAN BE REPLACED WITH PS FILE    
//**************************************************************** 
//CRETMEM1 EXEC PGM=IEBGENER 
//SYSUT1 DD *
HELLO, I AM THE MEMBER GENERATED USING IEBGENER
/* 
//SYSUT2 DD DSN=&SYSUID..IBMUTILM.GENPDS(MEMBER1),DISP=SHR  
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
//**************************************************************** 
//* COPY PS FILE TO MULTIPLE PDS MEMBER
//* HERE IN-STREAM DATA CAN BE REPLACED WITH PS FILE
//**************************************************************** 
//CRETMEM2 EXEC PGM=IEBGENER 
//SYSUT1 DD *
1 HELLO, I AM THE ANOTHER MEMBER GENERATED USING IEBGENER
2 HELLO, I AM THE ANOTHER MEMBER GENERATED USING IEBGENER
FIRSTMEM
3 HELLO, I AM THE YET ANOTHER MEMBER GENERATED USING IEBGENER
4 HELLO, I AM THE YET ANOTHER MEMBER GENERATED USING IEBGENER
SECNDMEM
5 HELLO, I AM THE ALSO NEW ANOTHER MEMBER GENERATED USING IEBGENER
/* 
//SYSUT2 DD DSN=&SYSUID..IBMUTILM.GENPDS,DISP=SHR  
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
          GENERATE  MAXNAME=3,MAXGPS=2
          MEMBER  NAME=MEMBER2
GROUP1    RECORD  IDENT=(8,'FIRSTMEM',1)
          MEMBER  NAME=MEMBER3
GROUP2    RECORD  IDENT=(8,'SECNDMEM',1)
          MEMBER  NAME=MEMBER4
/*