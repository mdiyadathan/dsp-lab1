clc;
clear all;
close all; 
x=[1,2,1,1]; 
x_ind=[0:3]; 
xmin=min(x_ind); 
xmax=max(x_ind); 
h=[1,1,1,1]; 
h_ind=[0:3]; 
hmin=min(h_ind); 
hmax=max(h_ind); 
y=conv(x,h); 
y_ind=[(xmin+hmin):1:(xmax+hmax)]; 
stem(y_ind,y); 
xlabel('time'); 
ylabel('amplitude'); 
title('convolution '); 
grid on;
clc;
clear all;
close all; 
x=[1,2,1,1]; 
x_ind=[0:3]; 
xmin=min(x_ind); 
xmax=max(x_ind); 
h=[1,1,1,1];
h_ind=[0:3]; 
hmin=min(h_ind); 
hmax=max(h_ind); 
l=length(x); 
m=length(h); 
n=l+m-1; 
y=zeros(1,n); 
y_ind=[(xmin+hmin):1:(xmax+hmax)]; 
for i=1:l 
for j=1:m 
y(i+j-1)=y(i+j-1)+x(i)*h(j); 
end 
end 
stem(y_ind,y); 
xlabel('time'); 
ylabel('amplitude'); 
title('convolution '); 