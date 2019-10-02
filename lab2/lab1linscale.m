function [image] = lab1linscale(img)


[row,col] = size(img);

ret=zeros(row,col);

minV=min(img(:));
maxV=max(img(:));


a= -minV;
b= (255/(maxV-minV));



for i=1:1:row
   for j=1:1:col
       val=img(i,j);
       ret(i,j)= b*(val+a);
   end
    
end


image= ret;

image=uint8(image);
    
end