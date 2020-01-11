% Hakan Buğra Erentuğ
close all; clc; clear all;
ImRight = imread('S01R.png');
ImLeft = imread('S01R.png');

[row, col, ch] = size(ImLeft);
W=3;
w = 200;
    
ImLeft = padarray(ImLeft,[W+w W+w],'both');
ImRight = padarray(ImRight,[W+w W+w],'both');
    
if (ch==3)
        ImLeft = rgb2gray(ImLeft);
        ImRight = rgb2gray(ImRight);
end
    
imshow(stereoAnaglyph(ImLeft,ImRight));

ImLeft = double(ImLeft);
ImRight = double(ImRight);
    
dispar = zeros(size(ImLeft));
    
for x=W+w+1:1:row+W+w
    for y=W+w+1:1:col+W+w
        dist = zeros(w,3);
        for i = w:-1:1
                SSD = sum(sum((ImLeft(x-W:x+W, y+i-W:y+i+W)-ImRight(x-W:x+W, y-W:y+W)).^2));
                comp = [0, i, SSD];
                dist(i,:) = comp(:);
        end
            ind = find(dist(:,3) == min(dist(:,3)));
            dispar(x,y) = dist(ind(1), 2);
    end
end
figure; imagesc(dispar); colormap jet; colorbar
ImLeft = uint8(ImLeft);
ImRight = uint8(ImRight);

disparityRange = [0, 96];disparityMap = disparity(ImLeft, ImRight,'BlockSize', 7,'DisparityRange',disparityRange);
hold on;

figure; imshow(disparityMap,disparityRange); colormap jet; colorbar
