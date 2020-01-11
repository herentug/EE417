function lab6OF(ImPrev,ImCurr,k,Threshold)
% Smooth the input images using a Box filter
ImPrev=double(ImPrev);
ImCurr=double(ImCurr);

% ImPrevB = imboxfilt(ImPrev,5);
% ImCurrB = imboxfilt(ImCurr,5);

% Calculate spatial gradients (Ix, Iy) using Prewitt filter

[Ix, Iy] = imgradientxy(ImCurr,'Prewitt');


% Calculate temporal (It) gradient
It = ImPrev-ImCurr;

[ydim,xdim] = size(ImCurr);
Vx = zeros(ydim,xdim);
Vy = zeros(ydim,xdim);
G = zeros(2,2);
b = zeros(2,1);
cx=k+1;
for x=k+1:k:xdim-k-1
    cy=k+1;
    for y=k+1:k:ydim-k-1
        % Calculate the elements of G and b
        
            G(1,1) = sum(sum(Ix(y-k:y+k, x-k:x+k).^2));
            G(1,2) = sum(sum(Ix(y-k:y+k, x-k:x+k).*Iy(y-k:y+k, x-k:x+k)));
            G(2,1) = sum(sum(Ix(y-k:y+k, x-k:x+k).*Iy(y-k:y+k, x-k:x+k)));
            G(2,2) = sum(sum(Iy(y-k:y+k, x-k:x+k).^2));
            b(1,2) = sum(sum(Ix(y-k:y+k, x-k:x+k).*It(y-k:y+k, x-k:x+k)));
            b(1,1) = sum(sum(Iy(y-k:y+k, x-k:x+k).*It(y-k:y+k, x-k:x+k)));
            
        eigs = eig(G); 
        if (min(eigs) < Threshold)
            Vx(cy,cx)=0;
            Vy(cy,cx)=0;
        else
            % Calculate u
            u=(-1) * pinv(G) * b;
            Vx(cy,cx)=u(1);
            Vy(cy,cx)=u(2);
        end
        cy=cy+k;
    end
    cx=cx+k;
end
% ImCurr=uint8(ImCurr);
% ImPrev=uint8(ImPrev);


cla reset;
imagesc(ImPrev); hold on;
[xramp,yramp] = meshgrid(1:1:xdim,1:1:ydim);
quiver(xramp,yramp,Vx,Vy,10,'r');
colormap gray;
end