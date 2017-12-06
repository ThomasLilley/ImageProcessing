% MATLAB script for Assessment Item-1
% Task-3
clear; close all; clc

I = imread('Noisy.png');
I = rgb2gray(I);

figure(1);
imshow(I);
title('Input image converted to Grayscale');

mask = zeros(5);
J = padarray(I,[2,2],127);    

for c = 1:size(J,1)
    for r = 1:size(J,2)
        for i = 1:5
            for j = 1:5
                if c < 474 && r < 756            
                mask(i,j) = J(c+i,r+j);
                end                
            end
        end
        M = median(mask(:));        
        J(c,r) = M;              
    end
end

J = uint8(J);
figure(2);
imshow(J);
title('Median average filter');

K = padarray(I,[2,2],127);

for c = 1:size(K,1)
    for r = 1:size(K,2)
        for i = 1:5
            for j = 1:5
                if c < 474 && r < 756            
                mask(i,j) = K(c+i,r+j);
                end                
            end
        end
        M = mean(mask(:));        
        K(c,r) = M;              
    end
end

K = uint8(K);
figure(3);
imshow(K);
title('Mean average filter');