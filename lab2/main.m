clc;
clear all;
close all;
%%DONE BY HAKAN BUGRA ERENTUG
% EE417 Lab-1 


% TASK 1%
figure
img1=imread('city.png');


subplot(1,2,1);
imshow(img1);
title('Original City')

subplot(1,2,2);
img12=lab1linscale(img1);
imshow(img12);
title('Linear Scaling')

%Task 2%

figure
b=imread('board.jpg');
subplot(1,3,1);
imshow(rgb2gray(b));
title('Reference');

c=imread('city.png');

subplot(1,3,2);
imshow(c);
title('City');

subplot(1,3,3);
img12=lab1condscale(c,b);
imshow(img12);
title('Result');


%Task 3%

figure
j=imread('jump.png');

subplot(2,1,1);
imshow(j);
title('Normal')

subplot(2,1,2);
img12=lab1locbox(j,5);
imshow(img12);
title('Box Filter k=5')


%Task 4%

figure
b=imread('currentImage.png');
subplot(1,3,1);
imshow(b);
title('Reference');


subplot(1,3,2);
imshow(lab1locmaxmin(b,2,1));
title('Max');

subplot(1,3,3);
imshow(lab1locmaxmin(b,2,2));
title('Min');


clear all;