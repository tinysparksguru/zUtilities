//Z55249A   JOB ,'Z55249',CLASS=A,MSGCLASS=A,                         
//          NOTIFY=&SYSUID
//STEPNAME EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
 DEFINE    CLUSTER  (NAME(HLQ.DSN1.VSAM)                 -
                    TRACKS(10 1)                         -
                    RECORDSIZE(2964 2964)                -
                    FREESPACE(10 15)                     -
                    NONINDEXED)                          -
           DATA     (NAME(HLQ.DSN1.DATA)                 -
                    CISZ(8192))                          
/*