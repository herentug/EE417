function [ret] = lab2sobelfilt(img, XorY)
%LAB2SOBELFILT Summary of this function goes here
%   Detailed explanation goes here
% XorY stands for horitontal or vertical sober operation
if(length(size(img))==3)
    img = rgb2gray(img);
end
img=double(img);

img=lab2gaussfilt(img);

if(XorY=='X')
    filter= [-1 0 1; -2 0 2; -1 0 1];
end
if(XorY=='Y')
    filter= [-1 -2 -1; 0 0 0; 1 2 1];
end

ret=conv2(img,filter);
ret=uint8(ret);
[r,c]=size(ret);
ret=ret(3:r-2, 3:c-2);    % To reduce border which comes from convolution

end

