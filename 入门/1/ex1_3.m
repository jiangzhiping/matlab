A=rand(3000,3000);
f=zeros(3000,3000);
u0=100;v0=100;
tic;

for r=1:3000
    u0x=u0*(r-1);
    for c=1:3000
        v0y=v0*(c-1);
        f(r,c)=A(r,c)*cos(u0x+v0y);
    end
end
t1=toc

tic;
r=0:3000-1;
c=0:3000-1;
[C,R]=meshgrid(c,r);
g=A.*cos(u0.*R+v0.*C);
t2=toc