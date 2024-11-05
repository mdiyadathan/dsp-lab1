clc; 
clear all; 
close all; 
x=[1 2 3 4]; 
h=[1 1 1]; 

l=length(x); 
m=length(h); 
n=l+m-1 
x1=[x zeros(1,n-l)]; 
h1=[h zeros(1,n-m)]; 
x2=fft(x1); 
h2=fft(h1); 
y2=x2.*h2; 
y=ifft(y2); 
disp(y);
