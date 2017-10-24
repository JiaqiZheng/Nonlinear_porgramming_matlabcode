%x in range of -5 to 5
x=-5:0.1:5;
%fx if the calculation f(x)
fx=(2/3)*abs(x).^3+(1/2)*x.^2;
%d2fx is the calculation second order derivative of f(x)
for i = 1:length(x)
    if x(i)>=0
        d2fx(i)=2*x(i)^2+x(i);
    else
        d2fx(i)=-2*x(i)^2+x(i);
    end
end
plot(x,fx)
hold on
plot(x,d2fx)
xlabel('x')
legend('f(x)','second derivative of f(x)')