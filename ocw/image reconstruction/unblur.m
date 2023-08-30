blur_img = imread("a1.jpg");
p = 0.985;
b1 = 1/(1-p);
b2 = -p*b1;

for i = 1:size(blur_img, 1)
    for j = 2:size(blur_img, 2)
        blur_img(i, j) = (b1*blur_img(i, j)/10) + (b2*blur_img(i, j-1)/10);
    end
end
imwrite(blur_img, "horizontal_unblur.jpg");