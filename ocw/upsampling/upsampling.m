A = imread("zebra.jpg", "jpg");

B = reshape([reshape(A, 1, []); zeros(2, numel(A))], size(A, 1)*3, []);
C = reshape([B; zeros(2*size(B, 1), size(B, 2))], size(B, 1), []);
CC = padarray(C, [4 4], 0);

ANS = CC;
for i = 1: size(CC, 1)
    for j = 3:size(CC, 2)-2
        ANS(i,j) = (0.333*CC(i, j-2)) + (0.666*CC(i, j-1)) + CC(i, j) + (0.666*CC(i, j+1)) + (0.333*CC(i, j+2));
    end
end
CC = ANS;
for j = 1: size(CC, 2)
    for i = 3:size(CC, 1)-2
        ANS(i,j) = (0.333*CC(i-2, j)) + (0.666*CC(i-1, j)) + CC(i, j) + (0.666*CC(i+1, j)) + (0.333*CC(i+2, j));
    end
end
ANS
imwrite(ANS, "scaledzebra.jpg");
imwrite(imresize(A, 3), "directscaledzebra.jpg");
