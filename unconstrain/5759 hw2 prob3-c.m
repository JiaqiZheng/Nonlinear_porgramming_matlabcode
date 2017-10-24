%excute this piece of code after the prob3 b in order to get x
for l=1:k
    e(l)=norm(x(:,l)-x(:,k));
    if l~=1
        z(l-1)=e(l)./e(l-1);
    end
end
plot([1:k-1],z,'-*')
xlabel('k')
ylabel('z_k')