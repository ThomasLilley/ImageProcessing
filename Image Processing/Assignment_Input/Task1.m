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
% Set the size for the new image
NewM = 1668;
NewN = 1836;
O = zeros(NewM,NewN);
% find the value to scale the image by
ScaleM = NewM/(size(A,1));
ScaleN = NewN/(size(A,2));

for i = 1:NewM
    for j = 1:NewN
        x = 1+round(i/ScaleM);
        y = 1+round(j/ScaleN);
        
        if x ==557
           x = 556;
        end
        if y == 613
           y = 612;
        end
        
        O(i,j) = A(x,y);
        
    end
end

O = uint8(O);
figure(3);
imshow(O);
title('Step-3: Nearest Neighbour Interpolation');


% step-4: Bilinear interpolation
O1 = zeros(NewM,NewN);
for i = 1:NewM
    for j = 1:NewN
        
        x1 = A(i);
        x2 = A(i+3);
        y1 = A(j);
        y2 = A(j+3);
        
    end
end

O1 = uint8(O1);
figure(4);
imshow(O1);
title('Step-4: Bilinear Interpolation');

