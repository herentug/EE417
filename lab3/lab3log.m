function [ret] = lab3log(img,T1,T2)
%LAB3LOG Summary of this function goes here
%   Detailed explanation goes here

if(length(size(img))==3)
    img = rgb2gray(img);
end
img=double(img);

ret=imgaussfilt(img);

filter=[0 1 0; 1 -4 1; 0 1 0];
 G=conv2(ret,filter,'same');

    [r,c]=size(img);
    E=zeros(r,c);
    
    for i = 2:r-1
        for j = 2:c-1
            
             if(G(i,j)< T1)
                if((G(i,j+1) * G(i,j-1))<0 || (G(i+1,j)*G(i-1,j))<0 )

                    if(abs(G(i,j-1)-G(i,j+1))>=T2)
                        E(i,j)=255;
                    end
                     if(abs(G(i+1,j)-G(i-1,j))>=T2)
                        E(i,j)=255;
                     end  
                end
             end
            
            if(abs(G(i,j))>= T1)
                if((G(i,j-1) * G(i,j))<0 || (G(i+1,j)*G(i,j))<0 ||(G(i,j+1) * G(i,j))<0 || (G(i-1,j)*G(i,j))<0)
                    
                    if(abs(G(i,j)-G(i,j+1))>=T2)
                    
                        E(i,j)=255;
                    end
                     if(abs(G(i-1,j)-G(i-1,j))>=T2)
                        E(i,j)=255;
                     end
                     if(abs(G(i,j)-G(i+1,j))>=T2)
                        E(i,j)=255;
                     end
                     if(abs(G(i,j)-G(i,j-1))>=T2)
                        E(i,j)=255;
                     end
                end
            end
           
        end
    end
    ret=E;
    


ret=uint8(ret);
end

