%given Q and b
Q=[2,-1,0;-1,2,-1;0,-1,2];
b=[10;2;-20];
%intitialization
k=20;
alpha=1;
theta=1;
beta=0.2;
s=1;
X=zeros(3,k);
X(:,1)=[0;0;0];
for i=1:(k-1)
%%%%%%%%%%%
%%%calculate m by armijo's rule
%%%%%%%%%%%
    m=0;
    j=1;
    while (j>0)
        funcx=0.5*X(:,i)'*Q*X(:,i)+b'*X(:,i)+0.5*X(1,i)^4+2*X(3,i)^4;
        gradx=Q*X(:,i)+b+[2*X(1,i)^3;0;8*X(3,i)^3];
        xs=X(:,i)-s*beta^m*gradx;
        if (xs(1)^2+xs(2)^2+xs(3)^2)>4
            xs=2*xs/(xs(1)^2+xs(2)^2+xs(3)^2)^0.5;
        end
        funcxbs=0.5*xs'*Q*X(:,i)*xs+b'*xs+0.5*xs(1)^4+2*s^4*xs(3)^4;
        if funcx-funcxbs>=theta*gradx'*(X(:,i)-xs)
            m=m+1;
        else
            j=0;
        end
    end
    X(:,i+1)=xs;
%%%%check optimal
    if Q*X(:,i+1)+b+[2*X(1,i+1)^3;0;8*X(3,i+1)^3]==[0;0;0]
        X(:,i+1)
        break;
    end
end
% plot(X(1,:))
% hold on
% plot(X(2,:))
% plot(X(3,:))
