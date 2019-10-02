function ret = lab1locmaxmin(img, k, m)

if(length(size(img))==3)

    img = rgb2gray(img);

end
[r, c] =size(img);
new=zeros(r,c);

img = double(img);

for i =k+1:1:r-k-1

    for j=k+1:1:c-k-1

        subimg=img(i-k:i+k, j-k:j+k);
        if(m==1)
        value = max(subimg(:));
        end
        if(m==2)
            value = min(subimg(:));
        end
        
        new(i,j)=value;

    end

end

ret = uint8(new);

end
