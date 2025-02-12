//SHRDV06A   JOB ,'SHRDV06',CLASS=A,NOTIFY=&SYSUID 
//*****************************************************************
//* COPY A DATASET USING SORT.
//* NOTE: OPTION COPY IS JUST SIMPLE COPY, NO SORTING
//*****************************************************************
//STEP1 EXEC PGM=SORT
//SORTIN   DD   *
HELLO I AM BEING COPIED
HELLO I AM SECOND RECORD
/*
//SORTOUT  DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSIN    DD   *
    OPTION COPY
/*