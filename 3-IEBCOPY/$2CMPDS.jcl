//Z55249A   JOB ,'Z55249',CLASS=A,NOTIFY=&SYSUID 
//*******************************************************************
//* TO DEMO, FIRST EDIT SOME MEMBER FOR MULTIPLE TIME AND 
//* AFTER EACH SAVE SHOW THE SPACE IS GETTING INCREASED
//* WHEN ACTUAL LINES ARE NOT INCRESING
//* NOW RUN THIS JOB TO SHOW WHAT COMPRESS THE PDS DOES
//* IEBCOPY is commonly used for this in real projects.
//* SYSUT1 and SYSUT2 should be same             
//*******************************************************************
//STEP1    EXEC PGM=IEBCOPY
//SYSPRINT DD  SYSOUT=A
//SYSUT1   DD  DSN=&SYSUID..IBMUTILM.TGTCPY7,DISP=SHR
//SYSUT2   DD  DSN=&SYSUID..IBMUTILM.TGTCPY7,DISP=SHR
//SYSIN    DD  DUMMY
