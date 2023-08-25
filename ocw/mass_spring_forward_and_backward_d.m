T = 0.1;
y(1)=0;
y(2)=0;
t(1)=0;
t(2)=T;
a(1)=0;
a(2)=1-cos(T);
for n = 1:198
    y(n+2)=(2*y(n+1)-y(n)+T*T)/(1+T*T);
    t(n+2)=t(n+1)+T;
    a(n+2)=1-cos(t(n+2));
end
plot(t,y,'-',t,a,'-');