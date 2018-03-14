function [result] = chapter_11_1()
%CHAPTER_11_1 Textscan Function
%   Detailed explanation goes here


file_id = fopen('numeric.csv');
ts_output = textscan(file_id,'%d,%d,%d,%d/n');


while not (feof(file_id))
    temp_data = textscan(file_id,'%d,%d,%d,%d/n');
    ts_output = [ts_output; temp_data];
    
    if feof(file_id)
        break;
    end
      
end
fclose(file_id);
result = ts_output;
end

