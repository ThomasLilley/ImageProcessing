% MATLAB script for Assessment Item-1
% Task-4
clear; close all; clc;

I = imread('Starfish.jpg');
I = rgb2gray(I);


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

figure(1);
imshow(I);

for J = 180:230
    for row = 1 : size(I,1)
        for col = 1: size(I,2)
            if I(row,col) == J
                I(row,col) = 0;
            end
        end
    end
end


Se= strel('square',1);
I = imopen(I,Se);
I = imdilate(I,Se);
I = imerode(I,Se);

figure(2);
imshow(I);
I = imbinarize(I);
I = imcomplement(I);
figure(3);
imshow(I);

