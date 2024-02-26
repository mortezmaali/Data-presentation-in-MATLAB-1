x = linspace(0,30,1000);
y = sin(x);
plot(x,y,LineWidth=2)
axis manual
xlabel('X')
ylabel('Y')

ax = gca;
h = hgtransform('Parent',ax);
hold on
plot(x(1),y(1),'o','Parent',h,LineWidth=2);
hold off
t = text(x(1),y(1),num2str(y(1)),'Parent',h,...
    'VerticalAlignment','top','FontSize',18);

for k = 2:length(x)
    m = makehgtform('translate',x(k)-x(1),y(k)-y(1),0);
    h.Matrix = m;
    pause(0.1)
    t.String = num2str(y(k));
    drawnow
end