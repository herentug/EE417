function [image] = histHakan(image)
    z = zeros(1,256);
    zCum = zeros(1,256);
    [r,c]=size(image);
    
    for i=1:1:r
        for j=1:1:c
            z(image(i,j)+1)=z(image(i,j)+1)+1;
        end 
    end

for i=1:1:size(z)
    z(i)=z(i)/(r*c);
    value=0;
    for j=1:1:i
        value=z(i)+value;
    end
    zCum(i)=value;
end









display(z(1:5));
display(zCum(1:5));

image=z;

end