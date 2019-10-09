clear;
clc;
close all;

% Hakan Buğra Erentuğ Lab-2 the main caller function 09-10-19
% Task 1

img = imread('jump.png');
figure;subplot(1,2,1);imshow(img);title('Original Image');
subplot(1,2,2);
out=lab2gaussfilt(img);
imshow(out);title('Gaussian Filtered Image');

% Task 2

img2 = imread('Tiger.png');
figure;subplot(1,3,1);imshow(img2);title('Original Image');
subplot(1,3,2);
out=lab2gaussfilt(img2);
imshow(out);title('Gaussian Filtered Image');
subplot(1,3,3);
out=lab2medfilt(img2,3);
imshow(out);title('Median Filtered Image');

% Task 3

img3 = imread('mother.png');
figure;
subplot(1,2,1);imshow(img3);title('Original Image');
subplot(1,2,2);
out=lab2sharpen(img3,10,2); % lambda= 10, 2 for gauss filter
imshow(out);title('Sharpened Image');

% Task 4
img4 = imread('house.png');
 figure;
 x(1)=subplot(2,2,1);imshow(img4);title('Original Image');
 x(2)=subplot(2,2,2);
 posn=mean(cell2mat(get(x(1:2),'position')));   % Merge first two frame and get average location
 delete(x(2)); x(2)=[];                         % delete the second frame.
 set(x(1),'position',posn)                      % Set first to average location
 
 subplot(2,2,3);imshow(lab2sobelfilt(img4,'Y'));title('Sobel Horizontal Image');
 subplot(2,2,4);imshow(lab2sobelfilt(img4,'X'));title('Sobel Vertical Image');

