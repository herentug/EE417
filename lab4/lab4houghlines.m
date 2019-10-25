function returnValue = lab4houghlines(img)
    subplot(4,1,1)
    imshow(img);
    [r,c, ch] = size(img);
    if ch == 3
       img = rgb2gray(img);
    end
    BW = edge(img, 'canny');
    subplot(4,1,2);
    imshow(BW);
    [H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89);
  
    title('checker.png');
    subplot(4,1,3);
    imshow(imadjust(rescale(H)),'XData',T,'YData',R,...
          'InitialMagnification','fit');
    title('Hough transform of checker');
    xlabel('\theta'), ylabel('\rho');
    axis on, axis normal, hold on;
    
    subplot(4,1,4)
    P  = houghpeaks(H, 20, 'Threshold',0.5*max(H(:)));
    imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
    xlabel('\theta'), ylabel('\rho');
    axis on, axis normal, hold on;
    plot(T(P(:,2)),R(P(:,1)),'s','color','white');
    x=0;
    for i=1:1000
        x=X+1;
    end
    
    lines = houghlines(BW,T,R,P,'FillGap',10,'MinLength',40);
    figure, imshow(img), hold on
    max_len = 0;
    min_len = 200;
    for k = 1:length(lines)
       xy = [lines(k).point1; lines(k).point2];
       plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

      
       plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
       plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

       
       len = norm(lines(k).point1 - lines(k).point2);
       if ( len > max_len)
          max_len = len;
          xy_long = xy;
       end
       if( len < min_len)
           min_len = len;
           xy_short = xy;
       end
       
    end
    plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');
    plot(xy_short(:,1),xy_short(:,2),'LineWidth',2,'Color','red');
end