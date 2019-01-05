function J = myHistogramEq (I)
%MYHISTOGRAMEQ takes in a greyscale image with intensities 0-255 
%and returns an equalized image, written by Eric Shen Perm 3966363
dim = size(I);
%create a histrogram with array index 1 being the number of pixels with
%intensity 0.
histogram = imhist(I);
numPixels = dim(1,1) * dim(1,2);
%find the cdfs of each intensity based on the histogram
cdf = cumsum(histogram./numPixels);
%create a transform by multiplying the cdf with the max intensity value and
%rounding
transform = round(cdf.*255);
%create new image based on transform
J = zeros(dim);
for i = 1:dim(1,1)
    for j = 1:dim(1,2)
        J(i,j) = transform(I(i,j)+1,1);
    end
end
end

