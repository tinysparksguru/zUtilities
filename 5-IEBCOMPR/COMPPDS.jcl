//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID

//STEPB    EXEC PGM=IEBCOMPR
//SYSPRINT DD  SYSOUT=A
//SYSUT1   DD  DSNAME=OLDSET,DISP=(OLD,KEEP)
//SYSUT2   DD  DSNAME=NEWMEMS,DISP=(OLD,KEEP)
//SYSIN    DD  *
       COMPARE TYPORG=PO
/*
