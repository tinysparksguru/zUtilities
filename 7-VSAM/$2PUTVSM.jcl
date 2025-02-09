//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* DELETE AND CREATE NEW PS FILE AND PUT SOME DATA
//*******************************************************************
//DELETE1 EXEC PGM=IEFBR14                                           
//SYSPRINT   DD SYSOUT=*                                              
//SYSOUT     DD SYSOUT=*                                                        
//DD1        DD DSN=&SYSUID..IBMUTILM.VSAMPS,
//           DISP=(MOD,DELETE,DELETE),SPACE=(TRK,(1,1)) 
//COPYPS   EXEC PGM=IEBGENER
//* NOTE
//* JUST MODIFY MYKEY2 TO MYKEY1 TO SHOW KSDS FAILURE
//SYSUT1 DD *
MYKEY1 I AM DATA ADDED TO PS THEN TO VSAM
MYKEY2 I AM DATA ADDED TO PS THEN TO VSAM
MYKEY3 I AM DATA ADDED TO PS THEN TO VSAM
/*
//SYSUT2 DD DSN=&SYSUID..IBMUTILM.VSAMPS,                       
//           DISP=(NEW,CATLG,DELETE),SPACE=(TRK,(2,2)),                       
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=800) 
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
//*******************************************************************
//* COPY PS FILE DATA TO ESDS FILE
//*******************************************************************
//CPYESDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//PSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMPS,DISP=SHR
//ESDSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMESDS,DISP=SHR
//SYSIN    DD   *
     REPRO INFILE(PSFILE) -
         OUTFILE(ESDSFILE)
/*
//*******************************************************************
//* COPY PS FILE DATA TO KSDS FILE
//*******************************************************************
//CPYKSDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//PSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMPS,DISP=SHR
//KSDSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMKSDS,DISP=SHR
//SYSIN    DD   *
     REPRO INFILE(PSFILE) -
         OUTFILE(KSDSFILE)
/*
//*******************************************************************
//* COPY PS FILE DATA TO RRDS FILE
//*******************************************************************
//CPYRRDS EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//PSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMPS,DISP=SHR
//RRDSFILE   DD  DSN=&SYSUID..IBMUTILM.VSAMRRDS,DISP=SHR
//SYSIN    DD   *
     REPRO INFILE(PSFILE) -
         OUTFILE(RRDSFILE)
/*