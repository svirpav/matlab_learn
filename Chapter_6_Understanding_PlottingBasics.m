clear;
clc;
%http://blog.johnmuellerbooks.com

%% Creating a first plot
%Color: (b g r c m y k w)Code : (. o x + * s d v ^ < > p h) Style (- : -. --)
x = -pi:0.01:pi;
subplot(2,2,1);
plot(x, sin(x), 'r-', x, cos(x), 'g--'), title('Plot Sin(x) Cos(x)'), grid on, legend('Sine', 'Cosine');
hold on;
newplot = plot(x, power(x,2), 'm--'); legend('sine','cosine','x^2');
hold off;
subplot(2,2,2);
area(x, sin(x)), title('Area Sin X'), grid;
subplot(2,2,3);
area(x,cos(x)), title('Area Cos X'),grid;

y = [12,45,36,20,8];
subplot(2,2,4);
bar(y), hold on;
newplot = plot(1:5,y,'r^-.'); grid on, title('Bar and Plot example'); legend('Bar', 'Plot'); hold off;

%plotyy
%loglog
%semilogx
%semilogy
%scatter
%hist
%area
%pie
%expolar



