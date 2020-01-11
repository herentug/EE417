function [outputArg1,outputArg2] = lab5calibpreb(img)
%LAB5CALIBPREB Summary of this function goes here
 
 
  figure; 
    [r,c, ch] = size(img);
    if ch == 3
       img = rgb2gray(img);
    end
    %BW = edge(img, 'Canny');
    tic
    corners = detectHarrisFeatures(img);
    
    toc
    
    
    % EDGE DETECTION WITH CANNY
    BW = edge(img, 'Canny');
    tic
    % HOUGH - HOUGHPEAKS - HOUGHLINES
    [H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89);
    P  = houghpeaks(H, 20, 'Threshold',0.5*max(H(:)));
    lines = houghlines(BW,T,R,P,'FillGap',10,'MinLength',40);

    % HARRIS LINES DETECTION
    
%     for k = 1:length(lines)
%        xy = [lines(k).point1; lines(k).point2];
%        plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
%        plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
%        plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red'); 
%        
%        lines(k)
%        k
%     end
   
    
    % MANUALLY SELECTED
    l1=lines(2);
    l2=lines(20);
    
    b = [ l1.rho ; l2.rho ];
    A = [cosd(l1.theta) sind(l1.theta); cosd(l2.theta) sind(l2.theta)];
    Ainv=inv(A);
    res=Ainv*b;
    
    
    
    
    % INTERSECTION POINT AND LINES
    x=0:1:size(img,1);
    y=(l1.rho - x*cosd(l1.theta))/sind(l1.theta);
    y2=(l2.rho - x*cosd(l2.theta))/sind(l2.theta);
    toc
    imshow(img); hold on;
     plot(x,y,'m');
    plot(x,y2,'m');
    plot(res(1),res(2),'-b*','MarkerSize',10);
    plot(corners);
   
    hold off;
end
