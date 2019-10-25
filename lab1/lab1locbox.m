function ret = lab1locbox(img, k)

if(length(size(img))==3)

    img = rgb2gray(img);

end
[r, c] =size(img);
new=zeros(r,c);

img = double(img);

for i =k+1:1:r-k-1

    for j=k+1:1:c-k-1

        subimg=img(i-k:i+k, j-k:j+k);

        value = mean(subimg(:));

        new(i,j)=value;

    end

end

ret = uint8(new);

end
