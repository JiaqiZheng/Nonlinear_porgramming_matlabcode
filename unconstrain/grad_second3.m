function y = grad_second3(x)
    Q=[2,-1,0;-1,2,-1;0,-1,2];
    y=Q+6*x(1)^2+2.4*x(3)^2;
    
end