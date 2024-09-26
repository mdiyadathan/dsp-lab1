clc; 
clear; 
close all; 
x=[1 2 3 4]; 
h=[1 1 1]; 
l=length(x); 
m=length(h); 
n=max(l,m); 
k=l+m-1; 
y=conv(x,h); 
for i=1:k-n 
y(i)=y(i)+y(n+i); 
end 
for i=1:n 
y1(i)=y(i); 
end 
disp(y1);
