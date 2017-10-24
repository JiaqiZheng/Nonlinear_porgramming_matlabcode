%using func2(x) for f(x) and grad2(x) for the derivative of f(x)
%%%%%%%%%%%%%%
%finding m for alpha
%%%%%%%%%%%%%%%%%
theta=0.001;
s=1;
beta=0.2;
x0=1.1;

%%%%%%%
%calculate x and y
%%%%%%%%%%%%
x(1)=x0;
for i=1:6
    if i~=1
        x(i)=x(i-1)-alpha_armijo(theta,beta,s,x(i-1),d_steepest(x(i-1)))*grad2(x(i-1));
    end
    
    y(i)=func2(x(i));
end

%%%%%%%
%plot x and y
%%%%%%%%%%%%
plot(x,y)
text(x(1),y(1),'x_0','HorizontalAlignment','Left');
text(x(2),y(2),'x_1','HorizontalAlignment','Left');
text(x(3),y(3),'x_2','HorizontalAlignment','Left');
text(x(4),y(4),'x_3','HorizontalAlignment','Left');
text(x(5),y(5),'x_4','HorizontalAlignment','Left');
text(x(6),y(6),'x_5','HorizontalAlignment','Left');
xlabel('x');
ylabel('f(x)');
    

