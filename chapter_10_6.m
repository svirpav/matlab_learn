function [] = chapter_10_6(times)
%CHAPTER_10_6 - While structure
%   Detailed explanation goes here

if nargin < 1
    times = 2;
end

repeat = 1;

while repeat <= times
    fprintf('While response :%d\n', repeat);
    repeat=repeat+1;
end

