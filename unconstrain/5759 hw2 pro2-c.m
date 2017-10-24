gama=0.123;
x(1)=0.666;
for i = 2:6
    if x(i-1)>=0
        x(i)=((i-gama)/i)*x(i-1)-2*gama*x(i-1)^2/i;
    else
        x(i)=((i-gama)/i)*x(i-1)+2*gama*x(i-1)^2/i;
    end
end
y=(2/3)*abs(x).^3+(1/2)*x.^2;
plot(x,y)
text(x(1),y(1),'x_0','HorizontalAlignment','Left');
text(x(2),y(2),'x_1','HorizontalAlignment','Left');
text(x(3),y(3),'x_2','HorizontalAlignment','Left');
text(x(4),y(4),'x_3','HorizontalAlignment','Left');
text(x(5),y(5),'x_4','HorizontalAlignment','Left');
text(x(6),y(6),'x_5','HorizontalAlignment','Left');
xlabel('x');
ylabel('f(x)');