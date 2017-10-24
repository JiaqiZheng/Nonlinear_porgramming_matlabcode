function y = alpha_armijo3(theta,beta,s,x,d)
    m=0;
    j=1;
    d=-grad3(x);
    while (j>0)
        alpha=s*beta.^m;
        if func3(x)-func3(x-alpha*grad3(x))<=-1*theta*s*(beta^m)*transpose(grad3(x))*d
            m=m+1;
             
        else
            j=0;
        end
    end
    y=alpha;
end