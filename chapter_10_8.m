function [result] = chapter_10_8(times)
%CHAPTER_10_8 FOR/RETURN Function
%   Detailed explanation goes here

if nargin < 1
    times = 2;
end

result = 'Sucess!';

for repeat = 1 : times
    if(repeat > 7)
        disp('(FOR/BREAK)-Too many inquarys');
        result = 'Oops!';
        return;
    end
    fprintf('(FOR/BREAK) Response number :%d\n', repeat);
end

disp('You will not see this message as RETURN exiting fron entire function.');

end

