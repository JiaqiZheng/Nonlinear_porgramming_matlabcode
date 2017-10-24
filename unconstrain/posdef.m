function Q=posdef(n)
    A = randn(n,n);
    [U,V]=eig(A+A');
    Q=U'*diag(5*rand(n,1))*U;
end