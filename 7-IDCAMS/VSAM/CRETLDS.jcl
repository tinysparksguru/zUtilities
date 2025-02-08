//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID
//SYSIN DD * 
  DEFINE CLUSTER ( - 
          NAME(HLQ.DSN1.VSAM.LDS) - 
          LINEAR - 
          CISZ(4096) - 
          TRACKS(20 20))
/* 