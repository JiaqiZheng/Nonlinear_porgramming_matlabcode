%using func3(x) for f(x) 
%and grad_second3(x) for the second order derivative of f(x)
%%%%%%%%%%%%%%%%%
theta=0.05;
s=1;
beta=0.5;
x0=[1;2;3];
k=20;
x=zeros(3,k);
x(1,1)=x0(1);
x(1,2)=x0(2);
x(1,3)=x0(3);
%%%%%%%
%calculate x and y
%%%%%%%%%%%%
for i=1:k
    if i~=1
        x(:,i)=[x(i-1);x(i+k-1);x(i+2*k-1)]-alpha_armijo3(theta,beta,s,[x(i-1);x(i+k-1);x(i+2*k-1)],d_newton([x(i-1);x(i+k-1);x(i+2*k-1)]))*grad3([x(i-1);x(i+k-1);x(i+2*k-1)]);
    end
    
    y(i)=func3([x(i);x(i+k);x(i+2*k)]);
end