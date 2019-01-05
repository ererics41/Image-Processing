%function that takes in an image I and returns a reconstructed image after
%taking a DCT and keeping only some input percent of coefficients.
function J = reconstructDCT(I,percent)
    %find how many elements to keep
    dim = size(I);
    n = round(percent*dim(1,1)*dim(1,2));
    %perform the DCT
    trans = dct2(double(I));
    %get the top n elements in the DCT
    tVect = reshape(trans,1,[]);
    B = maxk(tVect,n,'ComparisonMethod','abs');
    %set everything that isn't in the top n elements to 0 by creating a
    %mask that is 1 if the element at that location is in the top n and 0
    %otherwise
    mask = ismember(trans,B);
    %perform the inverse transform on the new DCT that includes only the
    %top n elements of the DCT
    J = idct2(trans.*mask);
end
