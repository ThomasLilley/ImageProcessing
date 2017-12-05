% MATLAB script for Assessment Item-1
% Task-2
clear; close all; clc;
% Load input image
I = imread('SC.png');
figure;
imshow(I);
title('Step-1: Load input image');
% where the colour range is 80-100 in the input image,
% change the colour to the value of 220
for J = 80:100
    for row = 1 : size(I,1)
        for col = 1: size(I,2)
            if I(row,col) == J
                I(row,col) = 220;
            end
        end
    end
end
figure(2);
imshow(I);
title('Step-2: Output');
