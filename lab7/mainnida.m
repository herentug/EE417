% Nidanur Günay  24231

Left = imread('S00L.tif');
Right = imread('S00R.tif');


[rl, cl, ch] = size(Left);
W=3;
w = 60;
    
Left = padarray(Left,[W+w W+w],'both');
Right = padarray(Right,[W+w W+w],'both');
    
if (ch==3)
        Left = rgb2gray(Left);
        Right = rgb2gray(Right);
end
    
imshow(stereoAnaglyph(Left,Right));

Left = double(Left);
Right = double(Right);
    
dispar = zeros(size(Left));
    
for x=W+w+1:1:rl+W+w
    for y=W+w+1:1:cl+W+w
        distance = zeros(w,3);
        for i = w:-1:1
                SSD = sum(sum((Left(x-W:x+W, y+i-W:y+i+W)-Right(x-W:x+W, y-W:y+W)).^2));
                comparisonmatrix = [0, i, SSD];
                distance(i,:) = comparisonmatrix(:);
        end
            ind = find(distance(:,3) == min(distance(:,3)));
            dispar(x,y) = distance(ind(1), 2);
    end
end
figure; imagesc(dispar); colormap jet; colorbar
Left = uint8(Left);
Right = uint8(Right);

disparityRange = [0, 96];disparityMap = disparity(Left, Right,'BlockSize', 7,'DisparityRange',disparityRange);
hold on;

figure; imshow(disparityMap,disparityRange); colormap jet; colorbar
