A=[-1,0,0;0,-1,0;0,0,-1];
b=[0;0;0];
Aequ=[1,1,1];
bequ=1;
k=200;
X=zeros(3,k);
alpha=0.01;
X(:,1)=[0.2;0.5;0.3];
distance=zeros(1,k);
for i=2:k
    f=[X(1,i-1), X(2,i-1), 0.1*X(3,i-1)+0.55];
    x=linprog(f,A,b,Aequ,bequ);
    X(:,i)=X(:,i-1)+alpha*(x-X(:,i-1));
end
for j=1:k
    %distance(j)=((X(1,j)-X(1,k))^2+(X(2,j)-X(2,k))^2+(X(3,j)-X(3,k))^2)^0.5;
    distance(j)=((X(1,j)-0.5)^2+(X(2,j)-0.5)^2+(X(3,j)-0)^2)^0.5;

end
plot(distance,'-*')
xlabel('k')
ylabel('distance')
