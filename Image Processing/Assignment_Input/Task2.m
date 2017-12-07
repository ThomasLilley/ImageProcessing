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

%generate plot of transformation

x1 = 0:80;
y1 = 1*x1;

xa = 80:100;
ya = 220*ones(size(xa));

xb = 100:250;
yb = 1*xb;

x = [x1 xa xb];
y = [y1 ya yb];

figure(3);
plot(x,y, 'linewidth', 1);
