function [result] = chapter_10_3(value, level)
%CHPATER_10_1 Summary of this function goes here
%   Detailed explanation goes here

if nargin < 2
    level = 1;
end

if value > 1 
    fprintf('Value = %d Level = %d\n', value, level);
    result = chapter_10_3(value - 1, level + 1) * value;
    disp(['Result :', num2str(result)]);
else
    fprintf('Value = %d Level = %d\n', value, level);
    result = 1;
    disp(['Result :', num2str(result)]);
end

end


%% fprintf();
%bo - floating point, double precission (Base 8)
%bu - floating point, double precission (Base 10)
%bx - floating point, double precission (Base 16 lower case letters)
%bX - floating point, double precission (Base 16 upper case letters)
%c - single character
%d - single integer
%e - floating point, exponential notation lower case e
%E - floating point, exponential notation Upper case E
%f - floating point, fixed point notation
%g - floatimng point, general notation using more compact of %f or %e with
%no trail zeroes
%G - floatimng point, general notation using more compact of %f or %E with
%no trail zeroes
%i - single integer
%o - Unsigned integer (Base 8)
%s - string of characters
%to - floating point single precission (Base 8)
%tu - floating point single precision (Base 10)
%tx
%tX
%u - unsigned integer (Base 10)
%x - unsigned integer (Base 16 lover case)
%X - unsigned integer (Base 16 upper case)

