%function that takes 2 images of the same size and returns the rmse value
function err = rmse(im1,im2)
    diff = double(im1)-double(im2);
    dim = size(im1);
    err = sqrt(sum(sum(diff.^2))/(dim(1,1)*dim(1,2)));
end

