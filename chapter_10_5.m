function [] = chapter_10_5(times)
%CHAPTER10_5 Simple FOR structure
%   Detailed explanation goes here

if nargin  < 1
    times = 2;
end

for repeat = 1 : times
    fprintf('Response number : %d\n', repeat);
end


end

