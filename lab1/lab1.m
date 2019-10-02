% DI = imread('darkImage.png')
% imshow(histeq(DI))
% figure
% imshow(DI)

% webcamlist
% cam=webcam(1)
% preview(cam)

% imshow(ssshot)
% imwrite(sshot,'asd.png')


% clear all
% close all
% clc
%
% I=imread('board.jpg');
% red= I(:,:,1);
% green= I(:,:,2);
% blue= I(:,:,3);
% 
%l figure
% subplot(2,2,1)
% imshow(I)
% 
% subplot(2,2,2)
% imshow(red)
% 
% subplot(2,2,3)
% imshow(green)
% 
% subplot(2,2,4)
% imshow(blue)

%  I=imread('board.jpg');
%  figure
%  subplot(1,2,1)
%  imshow(rgb2gray(I))
%  
%   subplot(1,2,2)
%  imshow((I))


% Im = imread('blocks.png');
% Im2 = rgb2gray(Im);
% figure, imshow(Im2)
% D1 = double(Im2);
% D2 = im2double(Im2);
% disp('Image in uint8')
% disp(Im2(190:200,320:330))
% disp('Image in double with double() ')
% disp(D1(190:200,320:330))
% disp('Image in double with im2double() ')
% disp(D2(190:200,320:330))

% for c =1:512
%     for r = 1:512
%         if (b(c,r,1) < 230) && (b(c,r,2) > 230) && (b(c,r,3) > 230)
%             b(c,r,1)=0;
%             b(c,r,2)=0;
%             b(c,r,3)=0;
%         end
%     end
% end
% 
% imshow(z);
% 
% k=find(Im > 170);
% size(k);


% DEFINING THE FUNCTION
% 
% function ret = lab1()
%     ret=3;
% end

img=imread('blocks.png')
imshow(edgeDetection(img));
