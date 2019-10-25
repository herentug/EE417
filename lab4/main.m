clc;clear all;close all;

% Hakan Bugra Erentug

% Task 1
I = checkerboard;

imshow(lab4ktcorners(I,1))


% Task 2
I2= imread('checker.jpg');
lab4houghlines(I2);



% Task 3
lab4houghcircles();


