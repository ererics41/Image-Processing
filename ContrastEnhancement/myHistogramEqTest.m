rgb1 = imread('ex1.tiff');
rgb2 = imread('ex2.tiff');
figure,imagesc(rgb1),axis off,colormap(gray), 
figure,imagesc(rgb2),axis off,colormap(gray)
grey1 = rgb2gray(rgb1);
grey2 = rgb2gray(rgb2);
figure,imagesc(grey1),axis off,colormap(gray), 
figure,imagesc(grey2),axis off,colormap(gray)
equalized1 = myHistogramEq(grey1);
equalized2 = myHistogramEq(grey2);
figure,imagesc(equalized1),axis off,colormap(gray), 
figure,imagesc(equalized2),axis off,colormap(gray)
