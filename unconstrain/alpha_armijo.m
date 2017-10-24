function y = alpha_armijo(theta,beta,s,x,d)
    m=0;
    j=1;
    d=-grad2(x);
    while (j>0)
        alpha=s*beta^m;
        if func2(x)-func2(x-alpha*grad2(x))<=-1*theta*s*(beta^m)*transpose(grad2(x))*d
            m=m+1;
             
        else
            j=0;
        end
    end
    y=alpha;
end
