function [] = chapter_10_7(times)
%CHAPTER_10_7 While Function with BREAK;
%   Detailed explanation goes here

if nargin<1
    times = 2;
end

repeat = 1;

while repeat <= times
    if(repeat > 5)
        disp('(WHILE/BREAK)-To many inquary');
        break;
    end
    fprintf('while with break response :%d\n', repeat);
    repeat=repeat+1;
end

disp('Exited from inner loop last call of function');

end

