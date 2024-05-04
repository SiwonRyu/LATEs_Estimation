cd "E:\Dropbox\Research\Projects\Topic 2 LATET (3YP)\Estimation Package\Stata"

* Define estim_late command
do "dofiles\def_est_iv.do"

* Load test dataset
use test_data.dta,clear

* Estimate
estim_late Y1 Y2 D1 D2 Z1 Z2, cov(W*) inst(T*) za(2) zb(4) fs 
estim_late Y1 Y2 D1 D2 Z1 Z2, cov(W*) inst(T*) za(2) zb(4) fs nl