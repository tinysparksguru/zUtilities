//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,
//          NOTIFY=&SYSUID
//* COMPARE DATE AND ON SUCCESS OUTPUT THE DATE TO SORTOUT
//* ON NOT SAME DO NOTHING.
//STEP001 EXEC PGM=SORT,PARM='CENTWIN=80'
//SORTIN  DD *
00HEADER 25/02/03  120009
01ABCD
/*
//SORTOUT DD SYSOUT=*
//SYSOUT  DD SYSOUT=*
//SORTMSG DD SYSOUT=*
//SYSIN   DD *
  INREC FIELDS=(10,2,13,2,16,2)
  SORT FIELDS=COPY,STOPAFT=1
  OUTFIL INCLUDE=(1,6,Y2T,EQ,Y'DATE1')
/*