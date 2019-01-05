rgb1 = imread('ex1.tiff');
rgb2 = imread('ex2.tiff');
figure,imagesc(rgb1),axis off,colormap(gray), 
figure,imagesc(rgb2),axis off,colormap(gray)
equalized1 = myColorHistEQ(rgb1);
equalized2 = myColorHistEQ(rgb2);
figure,imagesc(equalized1),axis off,colormap(gray), 
figure,imagesc(equalized2),axis off,colormap(gray)