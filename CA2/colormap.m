%x=linspace(0,1,200);
%t=linspace(0,10,201);
x = linspace(0, 2, 200); 
t = linspace(0, 10, 201); 
m=0;
sol=pdepe(m,@Equation,@Initial_condition,@Border_Condition,x,t);
u=sol(:,:,1);
figure
imagesc(x,t,u);
colorbar;
xlabel('x');
ylabel('t');
title('pde');
colormap('jet')