im = imread('image.tiff');
figure,imshow(im);
binary = toBinaryImage(im);
figure,imshow(binary);
ht2x2 = halftone2x2(im);
figure,imshow(ht2x2);
ht3x3 = halftone3x3(im);
figure,imshow(ht3x3);
