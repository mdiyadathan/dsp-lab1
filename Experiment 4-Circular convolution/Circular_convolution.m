clc; 
clear; 
close all; 
x=[1 2 3 1]; 
h=[2 3 4 5 6]; 
l=length(x); 
m=length(h); 
n=max(l,m); 
x1=[x zeros(1,n-l)]; 
h1=[h zeros(1,n-m)]; 
x2=fft(x1); 
h2=fft(h1); 
y2=x2.*h2; 
y=ifft(y2); 
yin=0:n-1; 
disp(y);

clc; 
clear; 
close all; 
x=[1 2 3 1]; 
h=[2 3 4 5 6]; 
l=length(x); 
m=length(h); 
n=max(l,m); 
x1=[x zeros(1,n-l)]; 
h1=[h zeros(1,n-m)]; 
x1=x1(:,end:-1:1); 
for i=1:length(x1) 
x1 = [x1(end) x1(1:end-1)] 
y(i)=sum(x1.*h1) 
end 
disp(y);
clc;
 clear all;
close all;
x=[1 2 3 1];
h=[2 3 4 5 6];
l=length(x);
m=length(h);
n=max(l,m);
x1=[x zeros(1,n-l)];
h1=[h zeros(1,n-m)];
h1=h1(:,end:-1:1);
hn =[];
for i=1:length(h1)
h1 = [h1(end) h1(1:end-1)]
hn=[hn;h1]
end
y=hn*x1';
disp(y);