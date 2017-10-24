%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%this part is from (a)
n=100;
Q=posdef(n);
for i=1:n
    v(:,i)=rand(n,1);
end
c=zeros(n);
d_conj=zeros(n);
d_conj(:,1)=v(:,1);
for l=1:n
    for k=1:n
        if (l>k)
            c(l,k)=-1*transpose(d_conj(:,k))*Q*v(:,l)/(transpose(d_conj(:,k))*Q*d_conj(:,k));
        end
    end
    d_conj(:,l)=v(:,l)+transpose(c(l,1:l)*transpose(d_conj(:,1:l)));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialazation
%do j times iteration
j=n;
x=zeros(n,j);
b=rand(n,1);
%%%%%%%%%%%%%%%%%

for m=1:(j-1)
    alpha(m)=-1*transpose(Q*x(:,m)-b)*d_conj(:,m)/(transpose(d_conj(:,m))*Q*d_conj(:,m));
    x(:,m+1)=x(:,m)+alpha(m)*d_conj(:,m);
end




