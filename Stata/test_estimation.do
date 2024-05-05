cd "`c(pwd)'"

* Define estim_late command
do "dofiles\def_estim.do"

* Load test dataset
use test_data.dta,clear

* Estimate
estim_late Y1 Y2 D1 D2 Z1 Z2, cov(W*) inst(T*) za(2) zb(4) fs 
estim_late Y1 Y2 D1 D2 Z1 Z2, cov(W*) inst(T*) za(2) zb(4) fs nl