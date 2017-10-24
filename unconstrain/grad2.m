function y = grad2(x)
    if x>=0
        y =2*x^2+x;
    else
        y=-2*x^2+x;
    end
end