function y = func3(x)
    Q=[2 -1 0;-1 2 -1;0 -1 2];
    b=[10;2;-20];
    y=0.5*transpose(x)*Q*x+transpose(b)*x+0.5*x(1)^4+0.2*x(3)^4;
 
end