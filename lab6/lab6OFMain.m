% Hakan Buğra Erentuğ
% EE417 lab 6


 clear all; close all; clc;

% Load the files given in SUcourse as Seq variable
load('sphere.mat')
Seq=sphere;



[row,col,num]=size(Seq);


% Define k and Threshold
k=30;
Threshold=3000;

for j=2:1:num
    ImPrev = Seq(:,:,j-1);
    ImCurr = Seq(:,:,j);
    lab6OF(ImPrev,ImCurr,k,Threshold);
    pause(1);
end
%%
% $x^2+e^{\pi i}$ 
% 
% $$e^{\pi i} + 1 = 0$$
% 
% $$e^{\pi i} + 1 = 0$$
% 
% $$e^{\pi i} + 1 = 0$$
% 
% 
% 