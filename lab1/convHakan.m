function [ image ] = convHakan( img,matrix )
  [rows,cols] = size(img); %// Change

  %// New - Create a padded matrix that is the same class as the input
  new_img = zeros(rows+2,cols+2);
  new_img = cast(new_img, class(img));

  %// New -  Place original image in padded result
  new_img(2:end-1,2:end-1) = img;

  %// Also create new output image the same size as the padded result
  image = zeros(size(new_img));
  image = cast(image, class(img));

  for i=2:1:rows+1 %// Change
    for j=2:1:cols+1 %// Change
      value=0;
      for g=-1:1:1
        for l=-1:1:1
          value=value+new_img(i+g,j+l)*matrix(g+2,l+2); %// Change
        end
      end
     image(i,j)=value;
    end
  end

%// Change
%// Crop the image and remove the extra border pixels
image = image(2:end-1,2:end-1);

end

