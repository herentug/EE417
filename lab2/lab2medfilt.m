function ret = lab2medfilt(img, k)
% k stands for square kernel size
if(length(size(img))==3)
    img = rgb2gray(img);    % GRAY-SCALE
end

[r, c] =size(img);
new=zeros(r,c);

img = double(img);

for i =k+1:1:r-k-1
    for j=k+1:1:c-k-1

        subimg=img(i-k:i+k, j-k:j+k); % corp image manually.
        value = median(subimg(:));  % Take median of filter assign to pixe
        new(i,j)=value;

    end
end

ret = uint8(new);
end
