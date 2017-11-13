clc
clear all
close all

%% Const  variables
samplrate = 16000;
nsec = 2;
n = 12;
nfilter = 26;

%% reading wav file
[sig, smrt] = audioread('command1.wav');
plot(sig);

%% removing silence
[sig] = silence(sig);

