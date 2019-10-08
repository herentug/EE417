function [image] = lab1linscale(img)

img= double(img)    %% *********ADDED LATER*******
[row,col] = size(img);  %Take size of image

ret=zeros(row,col);     % One of my mistakes, it is irrelevant.

minV=min(img(:));       % Minimum and maximum pixel values of image
maxV=max(img(:));


a= -minV;
b= (255/(maxV-minV));


for i=1:1:row
   for j=1:1:col
       val=img(i,j);
       ret(i,j)= b*(val+a);     %% Replace each point with linear scaled version
   end
    
end


image= ret; %% Return the image

image=uint8(image);     %% Cast the image to 8 bit integer
                       % to reduce non-integer values
    
end