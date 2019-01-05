clear;
%load image one
im1 = load('IMG_7401.mat');
im1Arr = im1.I;
%get the reconstructed images for n = 100,20,10,5
im1Recon50 = reconstructDCT(im1Arr,0.5);
im1Recon20 = reconstructDCT(im1Arr,0.2);
im1Recon10 = reconstructDCT(im1Arr,0.1);
im1Recon5 = reconstructDCT(im1Arr,0.05);
im1Recon1 = reconstructDCT(im1Arr,0.01);
%show image 1 and reconstructed images
figure(1);
imshow(im1Arr,[]);
figure(2);
imshow(im1Recon50,[]);
figure(3);
imshow(im1Recon20,[]);
figure(4);
imshow(im1Recon10,[]);
figure(5);
imshow(im1Recon5,[]);
figure(6);
imshow(im1Recon1,[]);
%display rmse values
disp(rmse(im1Arr,im1Recon50));
disp(rmse(im1Arr,im1Recon20));
disp(rmse(im1Arr,im1Recon10));
disp(rmse(im1Arr,im1Recon5));
disp(rmse(im1Arr,im1Recon1));

%load image 2
im2 = load('IMG_7405.mat');
im2Arr = im2.I;
%get the reconstructed images for n = 50,20,10,5,1 percent
im2Recon50 = reconstructDCT(im2Arr,0.5);
im2Recon20 = reconstructDCT(im2Arr,0.2);
im2Recon10 = reconstructDCT(im2Arr,0.1);
im2Recon5 = reconstructDCT(im2Arr,0.05);
im2Recon1 = reconstructDCT(im2Arr,0.01);
%show image 1 and reconstructed images
figure(7);
imshow(im2Arr,[]);
figure(8);
imshow(im2Recon50,[]);
figure(9);
imshow(im2Recon20,[]);
figure(10);
imshow(im2Recon10,[]);
figure(11);
imshow(im2Recon5,[]);
figure(12);
imshow(im2Recon1,[]);
%display rmse values
disp(rmse(im2Arr,im2Recon50));
disp(rmse(im2Arr,im2Recon20));
disp(rmse(im2Arr,im2Recon10));
disp(rmse(im2Arr,im2Recon5));
disp(rmse(im2Arr,im2Recon1));