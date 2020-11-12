figure('PaperUnits','points','PaperPosition',[1 1 2560 1080],'PaperSize',[2560 1080])
g = gca;
%matlab.graphics.internal.setPrintPreferences('DefaultPaperPositionMode','manual')
set(g,'Position',[1 1 2560 2560])


x = -pi:pi/100:pi;
subplot(2,2,1);
plot(x,sin(x*2),'k-','linewidth',3)
axis([-3 3 -2 2])
xlabel('t')
ylabel('Sine')
title('Function - $$\sin(t)$$','interpreter','latex')


subplot(2,2,3);
plot(x,exp(x),'k-','linewidth',3)
axis([-3 3 -5 20])
xlabel('t')
ylabel('Exponential')
title('Function - $$e^{t}$$','interpreter','latex')

subplot(2,2,4);
plot(x,x.^3,'k-','linewidth',3)
axis([-3 3 -30 30])
xlabel('t')
ylabel('Cube')
title('Function - $$t^3$$','interpreter','latex')


x = -pi:pi/1000:pi;
subplot(2,2,2);
plot(x,abs(x)-1./abs(x),'k-','linewidth',3) % log(abs(x)
axis([-3 3 -30 10])
xlabel('t')
ylabel('$$|x|-\frac{1}{|x|}$$','interpreter','latex')
title('Function - $$|x|-\frac{1}{|x|}$$','interpreter','latex')

print('oneDFunctions','-dpdf','-fillpage') % '-bestfit')
