% MATLAB script for Assessment Item-1
% Task-4
clear; close all; clc;

I = imread('Starfish.jpg');
I = rgb2gray(I);

figure(4);
imshow(I);
title('Input image converted to greyscale');

mask = zeros(5);
for c = 1:size(I,1)
    for r = 1:size(I,2)
        for i = 1:5
            for j = 1:5
                if c < 350 && r < 430            
                mask(i,j) = I(c+i,r+j);
                end                
            end
        end
        M = median(mask(:));        
        I(c,r) = M;              
    end
end
I = imadjust(I);
figure(1)
imshow(I);
title('Median filter applied');

%convert to binary
ImBin = imbinarize(I);
%invert
ImInv = imcomplement(ImBin);

figure(2)
imshow(ImInv);
title('Binarize');

% remove all object containing fewer than 700 pixels
bw = bwareaopen(ImInv,750);
imshow(bw);
% remove all object containing fewer than 900 pixels
bw = bw & ~bwareaopen(bw,900);

figure(3)
imshow(bw);
title('Object filtering and final output');




