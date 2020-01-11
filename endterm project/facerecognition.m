 clear all;clc; close all;
%% Modifying and loading the all faces  for the test

% Read all faces from 'faces' folder
Faces=[];
Names = string(missing);
Directory = 'faces'; 
Imgs = dir(Directory);
row = 48;
col = 48;
for j=1:length(Imgs)
    thisname = Imgs(j).name;
    thisfile = fullfile(Directory, thisname);
    try
      Img = imread(thisfile);  % try to read image
      Img = imresize(rgb2gray(Img),[row col]);
      Img = reshape(Img, [], 1);
      Faces = [Faces Img];
      Names(j)=thisname;
   catch
   end
end
Names=Names(3:3061);
%% Taking average faces
Faces = double(Faces)/255;
train = Faces(:,1:3059);
results=[]
Testsize=1;
for tr=1:Testsize
tr
rng=randi([1,3059]);
Test = Faces(:,rng);
testname=Names(rng);

xbar = mean(train')';
A = train - xbar;


K = 60;
[V D] = eigs(A'*A,K); % Returns K largest eigenvalues
newV = (A*V)/(norm(A*V));
diffx = Test - xbar;
faceX = 0;
database = [];

normav = norm(A*V);
eigfaces = [];
for i=1:1:K
    smalla = dot(diffx, newV(:,i));
    av = (smalla * newV(:,i));
    faceX = faceX + av;
    if i<=12
        eigfaces = [eigfaces av];
    end
end

faceX = faceX + xbar;


eigfacesimgs = [];
for i=1:1:12
eigfacesimgs = [eigfacesimgs double(reshape(eigfaces(:,i)*255, [row,col]))];
end
figure; colormap(gray); montage(eigfacesimgs, 'Size', [1 1]);
hold on;
figure
% Bulding the database for K eigfaces
database = [];
for i=1:1:3059
    x = train(:,i);
    diffx = x - xbar;
    dbrow = [];
    for j=1:1:K
        smalla = dot(diffx, newV(:,j));
        dbrow = [dbrow smalla];
    end
    database = [database; dbrow];
end

descriptor = [];
for i=1:1:K
    testdiffx = Test - xbar;
    descriptor = [descriptor dot(testdiffx, newV(:,i))];
end


%% Face Recognition

trainsize=3059;
mh= mahdistance(K, trainsize, database, descriptor,D)  ;
eu= euclidiandistance(K, trainsize, database, descriptor);
ca=Canberradistance(K, trainsize, database, descriptor);
ch=Chebyshevdist(K, trainsize, database, descriptor);
co=cosinedistance(K, trainsize, database, descriptor);
mse=MSEdist(K, trainsize, database, descriptor);
no3=nomdistance3(K, trainsize, database, descriptor);
no4=nomdistance4(K, trainsize, database, descriptor);
sad=SADdist(K, trainsize, database, descriptor);
ssd=SSDdist(K, trainsize, database, descriptor);


[out,idx]=sort(eu);
euindex=idx(2);

[out,idx]=sort(mh);
mhindex=idx(2);

[out,idx]=sort(ca);
caindex=idx(2);

[out,idx]=sort(ch);
chindex=idx(2);

[out,idx]=sort(co);
coindex=idx(2);

[out,idx]=sort(mse);
mseindex=idx(2);

[out,idx]=sort(no3);
no3index=idx(2);

[out,idx]=sort(no4);
no4index=idx(2);

[out,idx]=sort(sad);
sadindex=idx(2);

[out,idx]=sort(ssd);
ssdindex=idx(2);

r=[rng euindex mhindex caindex chindex coindex mseindex no4index sadindex ssdindex];
%% Displaying

subplot(3,4,1);
imshow(uint8(reshape(Test*255, [row,col])));
title(['Original Test Image',testname]);
subplot(3,4,2);
imshow(uint8(reshape(train(:,ssdindex)*255, [row,col])));
title(['Recognition (SSD)',Names(ssdindex)]);

tf = strncmpi(testname,Names(ssdindex),7);
if(~tf)
    r(2)=-1;
end

subplot(3,4,3);
imshow(uint8(reshape(train(:,mhindex)*255, [row,col])));
title(['Recognition (Mahalanobis)',Names(mhindex)]);

tf = strncmpi(testname,Names(mhindex),7);
if(~tf)
    r(3)=-1;
end

subplot(3,4,4);
imshow(uint8(reshape(train(:,caindex)*255, [row,col])));
title(['Recognition (Canberra)',Names(caindex)]);

tf = strncmpi(testname,Names(caindex),7);
if(~tf)
    r(4)=-1;
end

subplot(3,4,5);
imshow(uint8(reshape(train(:,chindex)*255, [row,col])));
title(['Recognition (Chebyshev)',Names(chindex)]);

tf = strncmpi(testname,Names(chindex),7);
if(~tf)
    r(5)=-1;
end

subplot(3,4,6);
imshow(uint8(reshape(train(:,coindex)*255, [row,col])));
title(['Recognition (Cosine)',Names(coindex)]);

tf = strncmpi(testname,Names(coindex),7);
if(~tf)
    r(6)=-1;
end

subplot(3,4,7);
imshow(uint8(reshape(train(:,mseindex)*255, [row,col])));
title(['Recognition (MSE)',Names(mseindex)]);

tf = strncmpi(testname,Names(mseindex),7);
if(~tf)
    r(7)=-1;
end

subplot(3,4,8);
imshow(uint8(reshape(train(:,euindex)*255, [row,col])));
title(['Recognition (Euclidian)',Names(euindex)]);

tf = strncmpi(testname,Names(euindex),7);
if(~tf)
    r(8)=-1;
end

subplot(3,4,9);
imshow(uint8(reshape(train(:,no4index)*255, [row,col])));
title(['Recognition (Norm 4)',Names(no4index)]);

tf = strncmpi(testname,Names(no4index),7);
if(~tf)
    r(9)=-1;
end

subplot(3,4,10);
imshow(uint8(reshape(train(:,sadindex)*255, [row,col])));
title(['Recognition (SAD)',Names(sadindex)]);

tf = strncmpi(testname,Names(sadindex),7);
if(~tf)
    r(10)=-1;
end

results = [results ; r]

end

writematrix(results,'output2.xls')
