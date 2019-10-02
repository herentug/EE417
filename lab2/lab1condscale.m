function [image] = lab1condscale(J,I)

m=size(J);
if (length(m)==3)
    J=rgb2gray(J);
end

m2=size(I);
if (length(m2)==3)
    I=rgb2gray(I);
end

I=double(I);
J=double(J);

[row,col] = size(J);

ret=zeros(row,col);


vj=std(J(:));
mj=mean(J(:));
mi=mean(I(:));
vi=std(I(:));

a= mi*(vj/vi)-mj;
b= vi/vj;


ret= b.*(J+a);


image=uint8(ret);

    
end