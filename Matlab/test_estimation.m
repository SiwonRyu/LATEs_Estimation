clc
clear all
format compact
format short g

addpath('mfiles')
% Set monotone pair
z_a = 3;
z_b = 4;

% Load dataset 
load('test_data.mat')

% Estimate
result = estim(Y,D,Z,W,T,[],[],z_a,z_b,"true","lin",1,"on");
result