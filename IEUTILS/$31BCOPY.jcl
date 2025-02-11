//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* TO BE USED IN FUTURE STEPS
//* CREATE 4 MEMBER IN PDS1
//* CREATE 2 MEMBER IN PDS2
//* MEMBER1 NAME IS SAME IN BOTH PDS JUST CONTENT IS DIFFERENT 
//*******************************************************************
//DELETED    PROC DSNNM=SRCCPY1
//DELETE2 EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                                        
//DD1        DD DSN=&SYSUID..IBMUTILM.&DSNNM,
//           DISP=(MOD,DELETE,DELETE),SPACE=(TRK,(1,1)) 
//           PEND
//DELETE1  EXEC PROC=DELETED,DSNNM=SRCCPY1
//DELETE2  EXEC PROC=DELETED,DSNNM=SRCCPY2
//DELETE3  EXEC PROC=DELETED,DSNNM=TGTCPY1
//DELETE4  EXEC PROC=DELETED,DSNNM=TGTCPY2
//DELETE5  EXEC PROC=DELETED,DSNNM=TGTCPY3
//DELETE6  EXEC PROC=DELETED,DSNNM=TGTCPY4
//DELETE7  EXEC PROC=DELETED,DSNNM=TGTCPY5
//DELETE8  EXEC PROC=DELETED,DSNNM=TGTCPY6
//DELETE9  EXEC PROC=DELETED,DSNNM=TGTCPY7
//DELETEA  EXEC PROC=DELETED,DSNNM=TGTCPY8
//* 
//PREP1    EXEC PGM=IEBUPDTE,PARM=NEW
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSNAME=&SYSUID..IBMUTILM.SRCCPY1,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
./ ADD NAME=MEMBER1
MEM1 CONTENT LINE 1
./ ADD NAME=MEMBER2
MEM2 CONTENT LINE 1
./ ADD NAME=MEMBER3
MEM3 CONTENT LINE 1
./ ADD NAME=MEMBER4
MEM4 CONTENT LINE 1
/*
//PREP2    EXEC PGM=IEBUPDTE,PARM=NEW
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSNAME=&SYSUID..IBMUTILM.SRCCPY2,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
./ ADD NAME=MEMBER1
MEMA1 CONTENT LINE 1
./ ADD NAME=MEMBERA2
MEMA2 CONTENT LINE 1
/*
//*******************************************************************
//* COPY FROM ONE PDS TO ANOTHER
//*******************************************************************
//STEP1    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1      DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2      DD  DSN=&SYSUID..IBMUTILM.TGTCPY1,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD  *
  COPY OUTDD=DD2,INDD=DD1
/*
//*******************************************************************
//* COPY FROM ONE PDS TO ANOTHER USING SYSUT
//*******************************************************************
//STEP2    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//SYSUT2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY2,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD DUMMY
//*******************************************************************
//* COPY MULTIPLE PDS TO ONE PDS 
//*******************************************************************
//STEP3    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.SRCCPY2,DISP=SHR
//DD3   DD  DSN=&SYSUID..IBMUTILM.TGTCPY3,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
  COPY    OUTDD=DD3
          INDD=DD1
          INDD=DD2
/*
//*******************************************************************
//* COPY SPECIFIED MEMBER 
//*******************************************************************
//STEP4    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY4,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
  COPY INDD=DD1,OUTDD=DD2
  SELECT MEMBER=(MEMBER1,MEMBER2)
/*
//*******************************************************************
//* COPY AND RENAME SPECIFIED MEMBER 
//*******************************************************************
//STEP5    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY5,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
  COPY INDD=DD1,OUTDD=DD2
  SELECT MEMBER=((MEMBER1,NEW1),MEMBER2)
/*
//*******************************************************************
//* COPY AND REPLACE SPECIFIED MEMBER IF EXISTS 
//*******************************************************************
//STEP61    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY6,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
  COPY INDD=DD1,OUTDD=DD2
  SELECT MEMBER=((MEMBER1,,R))
/*
//STEP62    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY2,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY6,DISP=SHR
//SYSIN    DD *
  COPY INDD=DD1,OUTDD=DD2
  SELECT MEMBER=((MEMBER1,,R))
/*
//*******************************************************************
//* COPY ALL MEMBER EXCEPT SPECIFIED MEMBER 
//*******************************************************************
//STEP7    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=*
//DD1   DD  DSN=&SYSUID..IBMUTILM.SRCCPY1,DISP=SHR
//DD2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY7,
//             DISP=(NEW,CATLG),SPACE=(TRK,(1,1,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//SYSIN    DD *
  COPY INDD=DD1,OUTDD=DD2
  EXCLUDE MEMBER=(MEMBER1)
/*
