function corners = lab4ktcorners(img, t)


if(length(size(img))==3)
    img = rgb2gray(img);
end
img=double(img);
[r,c]=size(img);

corners=[];
[Gx, Gy] = imgradientxy(img);

for i =2:1:r-2
    for j=2:1:c-2

        subImageofGx=Gx(i-1:i+1, j-1:j+1);

        subImageofGy=Gy(i-1:i+1, j-1:j+1);
        Ix2 = sum(sum(subImageofGx.*subImageofGx));
        Iy2 = sum(sum(subImageofGy.*subImageofGy));
        Ixy = sum(sum(subImageofGx.*subImageofGy));

        H=[Ix2 Ixy; Ixy Iy2];
        eigs = eig(H);   

        if min(eigs) > t
            corners=[corners; i, j];

        end

    end

end

figure;
img=uint8(img);
imshow(img);

hold on; plot(corners(:,2),corners(:,1),'.');

title('Corner Detection')

end

