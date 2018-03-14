function [out_var_1] = chapter_9_fun_1(name)
%First own created function
%   This function acpets argumnets

% If no input not given functon set default value as No Name

%global return_val;

if nargin < 1
    name = 'No name';
end


out_var_1 = [nested_fun_2, name,];
disp(out_var_1);

function[var_2] = nested_fun_2()
    var_2 = 'MATLAB say`s Hello to - ';
end

sub_fun_1(); 
end

function[var_1] = sub_fun_1()
var_1 = 'Call from Sub function';
disp(var_1);
end

%% Anonymous Function 

% anonymos = @in_var['Message', in_var, 'message'];





