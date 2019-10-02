% Im = imread('blocks.png');
% arr=size(Im);
% if(arr(3)== 3)
%     Im= rgb2gray(Im);
% end
% figure
% subplot(2,2,1)
% imshow(Im);
% title('Original Image')
% 
% w=[-1 -1 -1; -1 8 -1; -1 -1 -1];
% 
% c = conv2(w,Im);
% c = c(2:end-1,2:end-1);
% c=im2uint8(c);
% subplot(2,2,2)
% imshow(c);
% title('Built in Conv')
% 
% 
% c2 = convHakan(Im,w);
% subplot(2,2,3)
% imshow(c);
% title('User Defined Conv')
% 
% x = bitxor(c,c2);
% subplot(2,2,4)
% imshow(x);
% title('XOR')


I = imread('darkImage.png');


figure
subplot(1,3,1);
imshow(I);
title('Original')

subplot(1,3,2);
imshow(histeq(I));
title('Built-in')

subplot(1,3,3);
hist=histHakan(I);
imshow(hist);
title('User Defined');


figure
subplot(1,2,1);
histogram(I);
title('Before')

subplot(1,2,2);
histogram(hist);
title('After');