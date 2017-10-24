function y=grad3(x)
    Q=[2 -1 0;-1 2 -1;0 -1 2];
    b=[10;2;-20];    
    y=Q*x+b+2*x(1)^2+0.8*x(3)^3;
    
end