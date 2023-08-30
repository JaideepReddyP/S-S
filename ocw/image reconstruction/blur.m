img = imread("zebra.jpg");
blur_img = zeros(size(img));
blur_img(:,1) = img(:,1);

for i= 1:size(img,1)
    for j = 2:size(img,2)
        blur_img(i,j) = (0.00001*blur_img(i, j-1)) + (0.99999*img(i,j));
        blur_img(i,j) = blur_img(i,j)/1000;
    end
end

imwrite(blur_img, "horizontal_blur.jpg");