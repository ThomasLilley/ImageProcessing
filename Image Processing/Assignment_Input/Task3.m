% MATLAB script for Assessment Item-1
% Task-3
clear; close all; clc

I = imread('Noisy.png');
I = rgb2gray(I);

figure(1);
imshow(I);
title('input');

mask = zeros(1,25);
K = 1;

J = zeros(476,758);

for r = 3:1:size(I,1)
    for c = 3:1:size(I,2)
        J(r,c) = I(r,c);             
        
    end
end     
        
figure(2);
imshow(J,[0,255]);

