I= imread('27.png');

if(length(size(I))==3)
    I=rgb2gray(I);
end
I=uint8(I);

figure;
subplot(2,3,1);imshow(I);title('Original')

tic
Ipre = edge(I,'Prewitt');
p=toc;

tic
Irob = edge(I,'Roberts');
r=toc

tic
Ican = edge(I,'Canny');
c=toc

tic
Isob = edge(I,'Sobel');
s=toc

tic
Ilog = edge(I,'log');
l=toc


subplot(2,3,2);imshow(Ipre);title(['Prewitt: ',num2str(p)])
subplot(2,3,3);imshow(Irob);title(['Roberts: ',num2str(r)])
subplot(2,3,4);imshow(Ican);title(['Canny: ',num2str(c)])
subplot(2,3,5);imshow(Isob);title(['Sobel: ',num2str(s)])
subplot(2,3,6);imshow(Ilog);title(['Laplacian: ',num2str(l)])









