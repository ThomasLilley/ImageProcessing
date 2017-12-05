% MATLAB script for Assessment Item-1
% Task-4
clear; close all; clc;

I = imread('Starfish.jpg');
I = rgb2gray(I);

mask = zeros(size(I));
mask(25:end-25,25:end-25) = 1;
figure
imshow(mask)
title('Initial Contour Location')

T = activecontour(I,mask,400);
%T = imbinarize(I, .9);

figure(2);
imshow(T);

