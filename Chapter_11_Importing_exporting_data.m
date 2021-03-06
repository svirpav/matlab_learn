%% Clear all
clear;
clc;

%% Import basics 

%csvread() - works with numbers only, and must be separated by the commas

%dlmread() - works with numbers only, but the numbers are normally
%separated by something else

%textscan() - Can import both numbers and strings. You must provide a
%format specification to read the data correctley

%readteable() - can import both numbers and strings. The output from this
%function is always a table, even the source doesn`t contaion tabular data.

% Read the data;


csv_output_1 = csvread('numeric.csv');
dlm_output_2 = dlmread('numeric.csv');


file_id = fopen('numeric.csv');
ts_output_1 = textscan(file_id, '%d,%d,%d,%d/n');
end_of_file = feof(file_id);
ts_output_1 = [ts_output_1;textscan(file_id,'%f,%f,%f,%f/n')];

is_integer_r1 = isinteger(ts_output_1{1,1});
is_integer_r2 = isinteger(ts_output_1{2,1});

fclose(file_id);

rt_out = readtable('numeric.csv', 'ReadVariableNames', false);

% http://www.mathworks.com/help/matlab/ref/textscan.html#inputarg_formatSpec

mixed_data = readtable('mixdata.csv','ReadRowNames', true, 'Format', '%d%s%d%s');
pull_mixed_data = mixed_data('1003', 'Age');
pull_mixed_data_01 = mixed_data{'1002', 'Age'};
pull_mixed_data_02 = mixed_data{4,2};
pull_mixed_data_03 = class(mixed_data{'1005','Age'});

mixed_data_02 = readtable('delimiter.csv','ReadRowNames', true,'Delimiter', ';');

csv_out = csvread('numeric.csv', 0,0,[0,0,1,1]);
csv_out_01 = csvread('numeric.csv', 0,1,[0,1,2,2]);
csv_out_02 = csvread('numeric.csv', 0,2,[0,2,2,3]);

%% Function textscan()
return_result = chapter_11_1();


%% Export basics 

export_me = [1,2,3,4;5,6,7,8;9,10,11,12];
csvwrite('export_csv_1.csv', export_me);

% before exporting data - data must be feed as matrix 
% cell2mat

cell_array = {'Mike', 42, true;'Nina', 32,true;'Anton', 25, false};
table_01 = cell2table(cell_array);

writetable(table_01, 'export_csv_2.csv', 'WriteVariableNames', false);

%% Exporting images 

% http://mathworks.com/help/matlab/import_export/supported-file-formats.html

% Creating bar;

bar_data = [34,55,67;12,7,99;35,27,47];
plot_bar = bar(bar_data,'stacked');

%save image
saveas(gcf(),'bar_1.jpg','jpg');

%% Importing image 

import_image = imread('bar_1.jpg');

%dispaly image
figure();
image(import_image);