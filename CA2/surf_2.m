%x=linspace(0,1,100);
%t=linspace(0,10,101);
x=linspace(0,2,100);
t=linspace(0,10,101);
m=0;
sol=pdepe(m,@Equation,@Initial_condition,@Border_Condition,x,t);
u=sol(:,:,1);
surf(sol)
xlabel('x')
ylabel('t')
zlabel('u(x,t)')
title('sol')
shading interp
