//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* PRINT VALID OPTIONS
//*   OUTFILE -> DD NAME WHERE TO PRINT THE OUTPUT CONTENT.
//*              DEFAULT IS SYSOUT=*
//*   CHAR | DUMP | HEX
//* 
//*   FROMKEY() | FROMADDRESS() | FROMNUMBER() | SKIP()
//*   TOKEY()   | TOADDRESS()   | TONUMBER()   | COUNT()
//*       SKIP/COUNT            -> ALL TYPE
//*       FROMKEY/TOKEY         -> ONLY KSDS
//*       FROMNUMBER/TONUMBER   -> ONLY RRDS
//*       FROMADDRESS/TOADDRESS -> ONLY ESDS/KSDS
//*******************************************************************
//* PRINT ESDS DATA
//*******************************************************************
//PRINTES  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*  
//DD1     DD DSN=&SYSUID..IBMUTILM.VSAMESDS,DISP=SHR 
//SYSIN    DD * 
     PRINT INFILE(DD1)
/*
//*******************************************************************
//* PRINT KSDS DATA
//*******************************************************************
//PRINTKS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*  
//DD1     DD DSN=&SYSUID..IBMUTILM.VSAMKSDS,DISP=SHR 
//SYSIN    DD * 
     PRINT INFILE(DD1)
/*
//*******************************************************************
//* PRINT RRDS DATA
//*******************************************************************
//PRINTRS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*  
//DD1     DD DSN=&SYSUID..IBMUTILM.VSAMRRDS,DISP=SHR 
//SYSIN    DD * 
     PRINT INFILE(DD1)
/*