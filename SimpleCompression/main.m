%load image one
im1 = load('IMG_7401.mat');
im1Arr = im1.I;
%show image 1
figure(1);
imshow(im1Arr,[]);

%load image 1 with a quality factor of 1
[jpeg1qf1, cf1qf1, rmse1qf1] = myJpeg(im1Arr, 1);
figure(2);
imshow(jpeg1qf1,[]);
disp("Image 1 QF 1 Compression Factor is " + cf1qf1);
disp("Image 1 QF 1 RMSE is " + rmse1qf1);

%load image 1 with a quality factor of 5
[jpeg1qf5, cf1qf5, rmse1qf5] = myJpeg(im1Arr, 5);
figure(3);
imshow(jpeg1qf5,[]);
disp("Image 1 QF 5 Compression Factor is " + cf1qf5);
disp("Image 1 QF 5 RMSE is " + rmse1qf5);

%load image 1 with a quality factor of 10
[jpeg1qf10, cf1qf10, rmse1qf10] = myJpeg(im1Arr, 10);
figure(4);
imshow(jpeg1qf10,[]);
disp("Image 1 QF 10 Compression Factor is " + cf1qf10);
disp("Image 1 QF 10 RMSE is " + rmse1qf10);


%load image one
im2 = load('IMG_7405.mat');
im2Arr = im2.I;
%show image 1
figure(5);
imshow(im2Arr,[]);

%load image 1 with a quality factor of 1
[jpeg2qf1, cf2qf1, rmse2qf1] = myJpeg(im2Arr, 1);
figure(6);
imshow(jpeg2qf1,[]);
disp("Image 2 QF 1 Compression Factor is " + cf2qf1);
disp("Image 2 QF 1 RMSE is " + rmse2qf1);

%load image 1 with a quality factor of 5
[jpeg2qf5, cf2qf5, rmse2qf5] = myJpeg(im2Arr, 5);
figure(7);
imshow(jpeg2qf5,[]);
disp("Image 2 QF 5 Compression Factor is " + cf2qf5);
disp("Image 2 QF 5 RMSE is " + rmse2qf5);

%load image 1 with a quality factor of 10
[jpeg2qf10, cf2qf10, rmse2qf10] = myJpeg(im2Arr, 10);
figure(8);
imshow(jpeg2qf10,[]);
disp("Image 2 QF 10 Compression Factor is " + cf2qf10);
disp("Image 2 QF 10 RMSE is " + rmse2qf10);


