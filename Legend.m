x = -2 :0.1:4;
y = 3*x.^3



figure,
set(gcf,'Color','w') 

plot(x,y,'-','LineWidth',2.0,'Color',[0 0 1])
hold on 
plot(x,y,'-','LineWidth',2.0,'Color',[0 0 0.5])
hold on 
plot(x,y,'-','LineWidth',2.0,'Color',[0 1 0])
hold on 
plot(x,y,'-','LineWidth',2.0,'Color',[0 0.5 0])
hold on 
plot(x,y,'-','LineWidth',2.0,'Color',[1 0 0])
hold on 
plot(x,y,'-','LineWidth',2.0,'Color',[0.5 0 0])
hold on 


xlabel('Siklus iterasi ke-')
ylabel('Total Energy/ Ry')