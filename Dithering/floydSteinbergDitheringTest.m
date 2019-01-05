im = imread('image.tiff');
figure,imshow(im);
binary = toBinaryImage(im);
figure,imshow(binary);
dither = floydSteinbergDithering(im);
figure,imshow(dither);