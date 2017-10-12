libname ia 'SAS-data-library';
proc print data=ia.passngrs;
   sum FClass BClass EClass;
run;

proc print data=ia.passngrs;
    where Dest = 'SEA';
run;

proc print data=ia.passngrs noobs;
    where Dest='SEA';
    var FlightID Depart FClass BClass EClass;
run;

proc print data=ia.passngrs noobs;
    where Dest='SEA' and EClass ge 120 and BClass lt 15;
    var FlightID Depart FClass BClass EClass;
run;

proc sort data=ia.passngrs out=work.passngrs;
    by Dest;
run;
proc print data=work.passngrs;
    by Dest;
    pageby Dest;
    var Depart FClass BClass EClass;
    sum FClass BClass EClass;
run;

proc sort data=ia.personl out=work.personl;
    by Gender LName;
run;
proc print data=work.personl noobs;
    var LName FName Gender Salary;
    where State='NY' and JobCode in ('FA1', 'FA2', 'FA3');
run;


proc sort data=ia.passngrs out=work.passngrs;
    by Dest;
run;
proc print data=work.passngrs;
    id Dest;
    by Dest;
    pageby Dest;
    var Depart FClass BClass EClass;
    sum FClass BClass EClass;
run;


proc print data=ia.personl;
    where LName like 'BR%';
    var LName Fname;
run;





