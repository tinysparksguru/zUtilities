//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID
//************************************************************
//* GENERATE PS FILE 1 
//************************************************************
//GENPS1   EXEC PGM=IEBGENER
//SYSUT1   DD *
HELLO, I AM THE MEMBER NO 1
/*
//SYSUT2   DD DSN=&&TEMPPS1,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)    
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//GENPS2   EXEC PGM=IEBGENER
//SYSUT1 DD *
HELLO, I AM THE MEMBER NO 1
/*
//SYSUT2   DD DSN=&&TEMPPS2,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)     
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
//*
//GENPS3   EXEC PGM=IEBGENER
//SYSUT1 DD *
HELLO, I AM THE MEMBER NO 2
/*
//SYSUT2   DD DSN=&&TEMPPS3,DISP=(NEW,PASS),
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)   
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
//************************************************************
//* COMPARE PS DATASETS
//************************************************************
//STEPCMP1  EXEC PGM=IEBCOMPR
//SYSUT1   DD DSN=&&TEMPPS1,DISP=SHR
//SYSUT2   DD DSN=&&TEMPPS2,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
  COMPARE TYPORG=PS
/*
//STEPCMP2  EXEC PGM=IEBCOMPR
//SYSUT1   DD DSN=&&TEMPPS1,DISP=SHR
//SYSUT2   DD DSN=&&TEMPPS3,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
  COMPARE TYPORG=PS
/*