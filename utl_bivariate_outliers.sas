
*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|
;


options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have /*(where=(abs(x)>300))*/;
  call streaminit(5632);
  do i=1 to 300;
     x=int(100*rand("normal"));
     y=int(100*rand("normal"));
     output;
  end;
  x=350;
  y=350;
  output;
 drop i;
run;quit;

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;


%utl_submit_wps64('
libname sd1 sas7bdat "d:/sd1";
options set=R_HOME "C:/Program Files/R/R-3.3.2";
libname wrk sas7bdat "%sysfunc(pathname(work))";
proc r;
submit;
source("C:/Program Files/R/R-3.3.2/etc/Rprofile.site", echo=T);
library(aplpack);
library(haven);
have<-read_sas("d:/sd1/have.sas7bdat");
head(have);
pdf("d:/pdf/bagplot.pdf");
bagplot(have,pch=16,cex=2);
want<-have[abs(have$X)>300,];
want;
endsubmit;
import r=want data=wrk.want;
run;quit;
');

proc print data=want;
run;quit;

