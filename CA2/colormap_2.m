x = linspace(0, 2, 100); 
t = linspace(0, 10, 101); 
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