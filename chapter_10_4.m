function [result] = chapter_10_4(value)
%CHAPTER_10_4 Summary of this function goes here
%   Detailed explanation goes here

if value > 1 
    result = chapter_10_4(value - 1) * value;
else
    result = 1;
end

end

