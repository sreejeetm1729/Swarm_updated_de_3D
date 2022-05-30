%Random Data
plot_x=[];
plot_y=[];
plot_z=[];
for i=1:500
    plot_x = [plot_x;plot_update(1,:,i)];
    plot_y=  [plot_y;plot_update(2,:,i)];
    plot_z=  [plot_z;plot_update(3,:,i)];
end
%Animated Figure
figure;
hold on;
plot3(plot_x(1,:),plot_y(1,:),plot_z(1,:),'db');
% axis([min(x) max(x) min(y) max(y)]);
% xlabel('X', 'Interpreter','Latex');
% ylabel('Y', 'Interpreter','Latex');
% grid on;
% box on;
% hPlot = plot3(NaN,NaN,NaN,'db');
for k = 2:500 %loop
    %set(hPlot, 'XData', plot_x(k,:), 'YData', plot_y(k,:),'Zdata',plot_z(k,:),'db');
    %drawnow
    comet3(plot_x(k,:),plot_y(k,:),plot_z(k,:),0.5,'r.');
end
hold off;
