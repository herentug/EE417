function [returnValue] = lab4houghcircles(img)
  
if(length(size(img))==3)
    img = rgb2gray(img);
end

[r,c]=size(img);

    figure;
        imshow(img)
        [whites_center, whites_radi] = imfindcircles(img,[20 60],'ObjectPolarity','bright');
        viscircles(whites_center, whites_radi,'Color','b');
        title("Detected circles using Hough Transform 20 <= Radius <= 60 ");
%     figure;
%         imshow(img)
%     [whites_center, whites_radi] = imfindcircles(img,[20 60],'ObjectPolarity','bright', 'Sensitivity',0.9);
%     viscircles(whites_center, whites_radi,'Color','r');
%     figure;
%     imshow(img)
%     [whites_center, whites_radi] = imfindcircles(img,[20 60],'ObjectPolarity','bright', 'Sensitivity',0.9);
%     [darks_center, darks_radi] = imfindcircles(img,[20 60],'ObjectPolarity','dark');
%     viscircles(whites_center, whites_radi,'Color','b');
%     viscircles(darks_center, darks_radi,'LineStyle','--');
    
    
end