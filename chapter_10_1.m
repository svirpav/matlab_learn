function [] = chapter_10_1(value)
%CHAPTER_10_1 IF ELSEIF ELSE Function
%   This function compres the value and make a decision based on the
%   statment


if(value > 5)
    disp('The value what you have netered is greater than 5');
elseif(value == 5)
    disp('Value equals to 5');
else
    disp('Value is less that 5');
end

end

