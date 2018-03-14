clear;
clc;

%% Using command for user input

name = input('What is your name?:', 's');
disp(['Hello ', name]);

%% Creating a promt
promt = ['Type your own name, but only if it isn`t ',...
         'Wednesday. \nType the name of the neighbor ',...
         'on your right on Wednesday with full moon, type the'...
         'name of\nthe neighbor on your left! :'];
     
%% Displaying the name
name = input(promt, 's');
disp(['Hello ', name]);