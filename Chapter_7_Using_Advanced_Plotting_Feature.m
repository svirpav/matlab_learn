clear;
clc;
%http://dummies.com/programming/matlab/

%% Using the bar() function to plot 3D data;


data = [8,7,6;13,21,15;32,27,32];
figure;
subplot(2,2,1);
bar(data); title('Defauld');
subplot(2,2,2);
bar_1 = bar(data, 'stacked'); title('Stacked Update');
y_data = get(bar_1(1), 'YData');
y_data = [45,67,99];
set(bar_1(1), 'YData', y_data);
subplot(2,2,3);
bar(data, 'stacked'); title('Stacked Original');

%% Using bar3() to obtain a dimensional 3D plot
figure;
bar_2 = bar3(data);
bar2axes = gca;
xlabel(bar2axes,'X-Axis');
ylabel(bar2axes,'Y-Axis');
set(bar2axes,'XTickLabel',{'Yestarday','Today','Tomorrow'});
set(bar2axes,'YTickLabel',{'Area1','Area2','Area3'});
set(bar2axes,'ZTickLabel',[0:5:40]);
set(bar2axes,'ZLim', [0 40]);
title(bar2axes, 'Sample Plot', 'FontName', 'Times', 'FontSize', 18, 'Color', [.5,0,.5], 'BackgroundColor', [1,1,1], 'EdgeColor', [0,0,0], 'LineWidth', 2, 'Margin', 4);
set(get(bar2axes,'XLabel'), 'Rotation',-15);
set(get(bar2axes,'YLabel'), 'Rotation', 15);
x_offsetX = [0,0,1];
x_offsetY = [0,1,0];
x_offsetZ = [0,0,1];
pos_labelX = get(get(bar2axes, 'XLabel'), 'Position');
pos_labelY = get(get(bar2axes, 'YLabel'), 'Position');
set(get(bar2axes,'XLabel'), 'Position',[2.09 0.2 -5.9]);
set(get(bar2axes,'YLabel'), 'Position', [0.4 2.2 -8.9]);
t_arrow_annotation = annotation('textarrow',[.7,.60],[.9,.74],'String', 'This is annotation area');
t_box = annotation('textbox', [.1,.8,.11,.16], 'String', 'Areas Reoprt','HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
view([-45,45,10]);

%bar()
%bar3()
%bar3h()
%barh()
%hist()
%histc()
%pareto()
%polar()
%rose();

figure;
subplot(2,2,1);
hist(rand(1,100), 5);
subplot(2,2,2);
hist(rand(1,100),[-3.5:0.5:3.5]);

subplot(2,2,3);
histc_1 = histc(rand(1,100), [-4:1:4]);
bar([-4:1:4], histc_1,'histc');

subplot(2,2,4);
polar(histc_1);

figure;
rose(rand(1,100),5);


