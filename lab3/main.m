% Hakan Buğra Erentuğ LAB 3
clc;clear all;close all;

% Task 1

I=imread('peppers.png');

figure
subplot(2,3,1);imshow(rgb2gray(I));title("Original Image");
subplot(2,3,2);imshow(lab3sobelfilt(I,'X'));title("Sobel X Filtered Image");
subplot(2,3,3);imshow(lab3sobelfilt(I,'Y'));title("Sobel Y Filtered Image");
subplot(2,3,5);imshow(lab3sobelfilt(I,"XY"));title("Sobel Gradient");
subplot(2,3,6);imshow(lab3sobelfilt(I,"Edge",120));title("Sobel Edges");




% Task 2

figure
subplot(2,3,1);imshow(rgb2gray(I));title("Original Image");
subplot(2,3,2);imshow(lab3prewitt(I,'X'));title("Prewitt X Filtered Image");
subplot(2,3,3);imshow(lab3prewitt(I,'Y'));title("Prewitt Y Filtered Image");
subplot(2,3,5);imshow(lab3prewitt(I,"XY"));title("Prewitt Gradient");
subplot(2,3,6);imshow(lab3prewitt(I,"Edge",150));title("Prewitt Edges");




% Task 3

I=imread("object_contours.jpg");
figure
subplot(1,3,1);imshow(rgb2gray(I));title("Original Image");

filter=[0 1 0; 1 -4 1; 0 1 0];

G= conv2(rgb2gray(I),filter,"same");


subplot(1,3,2);imshow(G,[]);title("Laplacian of an image");
subplot(1,3,3);imshow(lab3log(I,10,90));title("LoG Edges");




