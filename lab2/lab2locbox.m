function ret = lab2locbox(img, k)

if(length(size(img))==3)
    img = rgb2gray(img);    %%Convert to gray scale
end
[r, c] =size(img);
new=zeros(r,c);
img = double(img);  %% cast double to work on it

for i =k+1:1:r-k-1

    for j=k+1:1:c-k-1

        subimg=img(i-k:i+k, j-k:j+k);

        value = mean(subimg(:));    % take mean of kernel and assign

        new(i,j)=value;

    end

end

ret = uint8(new);      %% convert to 8bit integer to show image

end
