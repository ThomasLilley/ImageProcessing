% MATLAB script for Assessment Item-1
% Task-1
clear; close all; clc;

% Step-1: Load input image
A = imread('Zebra.jpg');
figure;
imshow(A);
title('Step-1: Load input image');

% Step-2: Conversion of input image to grey-scale image
A = rgb2gray(A);
figure;
imshow(A);
title('Step-2: Conversion of input image to greyscale');
% find the size of the input image
[M,N] = size(A);

% Step-3: Resize image from 556x612 to 1668x1836 (1:3)
% using Nearest Neighbour Interpolation
% The size of the output image
MNewSize = 1668;
NNewSize = 1836;
% Calculate the scale the input image is being increased by dividing the
% output image dimensions by the input image simensions
XScale = MNewSize./(M-1);
YScale = NNewSize./(N-1);

% populates the image with zeros
Out = zeros(MNewSize,NNewSize);

%Interpolation stage, For the dimensions of the output 
%image do the following
for i = 0:MNewSize-1
 
 for j = 0:NNewSize-1
 
    Out(i+1,j+1) = A(1+round(i./XScale),1+round(j./YScale));
 
 end
end

%outputs the image as a figure in grayscale with a title
figure(3);
imshow(Out,[0,255]);
title('Step-3: Nearest Neighbour Interpolation');


% Step-4: Resize image from 556x612 to 1668x1836 (1:3)
% using Bilinear interpolation




