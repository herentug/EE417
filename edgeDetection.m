function img = edgeDetection(im)
im=rgb2gray(im);
w=[-1 -1 -1; -1 8 -1; -1 -1 -1];

img=conv2(im,w);
img=histeq(img);

end