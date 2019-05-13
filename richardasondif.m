clc
clear all
tic
%derivative via richardson extrapolation

format long

f=@(x) -0.1*x.^4 -0.15*x.^3 - 0.5*x.^2 - 0.25*x + 1.2;
x1=-0.9125;
h=0.5;


for i=1:1
    
    df1=(f(x1+h)-f(x1-h))/(2*h);
    h=h/2;
    df2=(f(x1+h)-f(x1-h))/(2*h);
    
    TV=df2 + (df2-df1)/3;
    
end

fprintf('Derivative at %f is \n',x1);
disp(TV)

toc