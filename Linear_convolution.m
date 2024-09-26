clc; 
clear all; 
close all; 
x1 = input("Enter first Sequence"); 
h1 = input("Enter second Sequence"); 
y1 = conv(x1,h1); 
disp("The convoluted sequence is: ");
 disp(y1); 
l = length(x1); 
m = length(h1); 
k = l+m-1;
 n1 = 0:1:l-1; 
n2 = 0:1:m-1;
 n3 = 0:1:k-1; 
subplot(1,3,1); 
stem(n1,x1,"o");
 xlabel("n");
 ylabel("Amplitude");
 title("x(n)"); 
grid on xlim([-1 l+1]);
 ylim([0 max(x1)+2]); 
 
subplot(1,3,2);
 stem(n2,h1,"o"); 
xlabel("n"); 
ylabel("Amplitude");
 title("h(n)"); 
grid on xlim([-1 m+1]); 
ylim([0 max(h1)+2]); 
 
subplot(1,3,3);
 stem(n3,y1,"o"); 
xlabel("n"); 
ylabel("Amplitude"); 
title("y(n)"); 
grid on xlim([-1 k+1]);
 ylim([0 max(y1)+2]); 

 clc;
clear all;
close all; 
x=[1,2,1,1]; 
x_ind=0:3; 
xmin=min(x_ind); 
xmax=max(x_ind); 
h=[1,1,1,1];
h_ind=0:3; 
hmin=min(h_ind); 
hmax=max(h_ind); 
l=length(x); 
m=length(h); 
n=l+m-1; 
y=zeros(1,n); 
y_ind=(xmin+hmin):1:(xmax+hmax); 
for i=1:l 
for j=1:m 
y(i+j-1)=y(i+j-1)+x(i)*h(j); 
end 
end 
stem(y_ind,y); 
xlabel('time'); 
ylabel('amplitude'); 
title('convolution '); 
grid on;