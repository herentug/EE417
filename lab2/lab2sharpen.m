function [ret] = lab2sharpen(img,delta,M)
%LAB2SHARPEN Summary of this function goes here
%   Detailed explanation goes here
% M ==>  1 for local box, 2 for Gaussian, 3 for median
if(length(size(img))==3)
    img = rgb2gray(img);
end

img = double(img);

if(M==1)
    soft=lab2locbox(img,3);     % kernel size assumed 3
end
if(M==2)
    soft=lab2gaussfilt(img);
    [r,c]=size(soft);
    soft=soft(3:r-2, 3:c-2);    % To reduce border which comes from convuliton
   
end
if(M==3)
    soft=lab2medfilt(img,3);    % kernel size assumed 3
end

soft=double(soft);  % soft stands for smoothened image


ret= img + (delta.*(img-soft)); % To sharpen the image

ret=uint8(ret);             % uint8 convertion

end

