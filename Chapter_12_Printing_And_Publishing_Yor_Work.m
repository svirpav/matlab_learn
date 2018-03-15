clear;
clc;
%% Listing of available fonts

% get list of fonts
fonts = listfonts();

%find specific font 
get_font = find(strcmp(fonts, 'Arial'));

%% Exaple of annotations with text formating 
% Text formating on a figure()
data_1 = [7,12,25,44,10];
bar_1 = bar(data_1);
%saveas(gcf(), 'create_bar_3', 'mmat');



t_box_1 = annotation('textbox',[.15,.825,.14,.075], 'String', 'Light',...
                     'FontName', 'Arial','FontSize', 16, 'FontWeight',...
                     'light', 'BackgroundColor', [1,1,0]);
                 
t_box_2 = annotation('textbox',[.30,.825,.14,.075], 'String', 'Normal',...
                     'FontName', 'Arial','FontSize', 16, 'FontWeight',...
                     'normal', 'BackgroundColor', [1,1,0]);
t_box_3 = annotation('textbox',[.45,.825,.14,.075], 'String', 'Demi',...
                     'FontName', 'Arial','FontSize', 16, 'FontWeight',...
                     'demi', 'BackgroundColor', [1,1,0]);

t_box_4 = annotation('textbox',[.60,.825,.14,.075], 'String', 'Bold',...
                     'FontName', 'Arial','FontSize', 16, 'FontWeight',...
                     'bold', 'BackgroundColor', [1,1,0]);
                 
t_box_5 = annotation('textbox',[.15,.725,.17,.075], 'String', 'Monospace',...
                     'FontName', 'Ubuntu','FontSize', 16,...
                     'BackgroundColor', [1,1,0]);
                 
t_box_6 = annotation('textbox',[.33,.725,.14,.075], 'String', 'Normal',...
                     'FontName', 'Ubuntu','FontSize', 16, 'FontAngle',...
                     'normal', 'BackgroundColor', [1,0,1]);
                 
t_box_7 = annotation('textbox',[.48,.725,.14,.075], 'String', 'Italic',...
                     'FontName', 'Ubuntu','FontSize', 16, 'FontAngle',...
                     'italic', 'BackgroundColor', [1,0,1]);
                 
t_box_8 = annotation('textbox',[.15,.625,.14,.075], 'String', 'Oblique',...
                     'FontName', 'Ubuntu','FontSize', 16, 'FontAngle',...
                     'oblique', 'BackgroundColor', [1,0,1]);

t_box_9 = annotation('textbox', [.30,.625,.14,.075], 'String', '\underline{Underline}',...
                     'FontSize', 16, 'BackgroundColor', [.5,1,.5], 'Interpreter', 'latex');
                 
t_box_10 = annotation('textbox', [.15,.525,.17,.085], 'String', '\alpha\beta\gamma\delta\epsilon\zeta\eta\theta\iota\kappa\lambda\mu \nu \xi\pi\rho\sigma\tau\upsilon\phi\chi\psi\omega',...
                      'BackgroundColor', [.5,.5,1]);
                  
t_box_11 = annotation('textbox', [.15,.425,.14,.075], 'String', 'Normal^{Super}_{Sub}',...
                      'BackgroundColor', [1,.1,.2]);
                  
t_box_12 = annotation('textbox', [.30,.425,.14,.075], 'String', '$\displaystyle\frac{x-2y}{x+y}$',...
                      'BackgroundColor', [1,.1,.2], 'Interpreter', 'latex');

t_box_13 = annotation('textbox', [.45,.425,.14,.075], 'String', '$\sqrt{f}$',...
                      'BackgroundColor', [1,.1,.2], 'Interpreter', 'latex');
       
t_box_14 = annotation('textbox', [.60,.425,.14,.1], 'String', '$$\sum_{i=1}^{2n}{|k_i-k_j|}$$',...
                      'BackgroundColor', [1,.1,.2], 'Interpreter', 'latex');
                  
t_box_15 = annotation('textbox', [.15,.300,.17,.1], 'String', '$$\int_{y1(x)}^{y2(x)}{f(x,y)}\d{dx}\d{dy}$$',...
                      'BackgroundColor', [.1,.5,.2], 'Interpreter', 'latex');
                 
t_box_16 = annotation('textbox', [.33,.300,.14,.1], 'String', '$\displaystyle\frac{d^2u}{dx^2}$',...
                      'BackgroundColor', [.1,.5,.2], 'Interpreter', 'latex');
                  
%% Publish 

%publich()
%.doc
%.html
%.latex
%.pdf
%.ppt
%.xml

%publish('Chapter_6_Understanding_PlottingBasics.m', 'pdf');

%% Saving Plot as script

saveas(bar_1, 'create_bar_1','m');
saveas(gcf(), 'create_bar_2', 'm');

%catchError
%codeToEvaluate
%createThumbnail
%evalCode
%figureSnapMethode
%format
%imageFormat
%maxHeight
%maxOutputLines
%maxWidth
%outputDir
%showCode
%stylesheet
%useNewFigure

saveas(t_box_7, 't_box_7.jpg');
