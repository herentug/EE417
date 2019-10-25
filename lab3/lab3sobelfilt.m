function [ret] = lab3sobelfilt(img, XorY,T)
%LAB2SOBELFILT Summary of this function goes here
%   Detailed explanation goes here
% XorY stands for horitontal or vertical sober operation
if(length(size(img))==3)
    img = rgb2gray(img);
end
img=double(img);

%img = imgaussfilt(img);

if(XorY=='X')
    filter= [-1 0 1; -2 0 2; -1 0 1];
    ret=conv2(img,filter,"same");
end
if(XorY=='Y')
    filter= [-1 -2 -1; 0 0 0; 1 2 1];
    ret=conv2(img,filter,"same");
end
if(XorY == "XY")
   filterX= [-1 0 1; -2 0 2; -1 0 1];
   retX=conv2(img,filterX,"same"); 
    
   filterY= [-1 -2 -1; 0 0 0; 1 2 1];
   retY=conv2(img,filterY,"same");
   
   ret=sqrt(retX.^2 + retY.^2);
end

if(XorY=="Edge")
    [r,c]=size(img);
    ret=lab3sobelfilt(img,"XY",0);
    for i=1:r
        for j=1:c
            if(ret(i,j)<T)
               ret(i,j)=0 ;
            else
                ret(i,j)=255;
            end
       
        end
    end
    
    
end



ret=uint8(ret);


end

