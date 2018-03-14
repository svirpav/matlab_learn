clear;
clc;

%% ElseIf function

random_gen = rand();
value = int32(random_gen);
chapter_10_1(value);

%% Switch Function

chapter_10_2(2);

%% Factorial_1

fac_1 = chapter_10_3(7);

%% Factorial_2
fac_2 = chapter_10_4(9);

%% FOR Function

chapter_10_5(10);

%% WHILE Function
chapter_10_6(7);

%% WHILE Function with BREAK;
chapter_10_7(7);

%% FOR/BREAK Function
chapter_10_8(9);

%% Menu

EndIt = false;

while not(EndIt)
    
    disp('Chose from drop down menu');
    disp('Selection :1');
    disp('Selection :2');
    disp('Selection :3');
    disp('Quit :4');
    
    selection = input('Chose and option :');
    
    if selection == 4
        disp('Exited from menu');
        EndIt = true;
    else
        switch selection
            case 1
                disp('Sub selction :1');
            case 2
                disp('Sub selection :2');
            case 3
                disp('Sub selection :3');
            otherwise
                disp('Wrong enetred value quiting');
                break;
        end
        pause(2);
    end
end
    
