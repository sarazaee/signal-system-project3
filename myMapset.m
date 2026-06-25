clc;
clear;
close all;
chars = ['a':'z', ' ', '.', ',', '!', '?', ';'];
Maptset = cell(2, 32);
for i = 1:32
    Maptset{1, i} = chars(i);                
    Maptset{2, i} = dec2bin(i-1, 5);  
end

save('Maptset.mat', 'Maptset');

disp(Maptset(:, 1:5));