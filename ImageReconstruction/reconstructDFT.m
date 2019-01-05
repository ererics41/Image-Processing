%function that takes in an image I and returns a reconstructed image after
%taking a fourier transform and keeping only some input percent of 
%coefficients.
function J = reconstructDFT(I,percent)
    %find how many elements to keep
    dim = size(I);
    n = round(percent*dim(1,1)*dim(1,2));
    %perform the fourier transform
    trans = fft2(I);
    %get the top n elements by sorting and finding the top n, includes the
    %next two pairs if a conjugate pair is cut off
    tVect = reshape(trans,1,[]);
    sorted = sort(tVect,'descend','ComparisonMethod','abs');
    maxN = sorted(1:n);
    %check if a conjugate pair is cut 
    if abs(sorted(n)) == abs(sorted(n+1))
        maxN = sorted(1:n+1);
    end
    %set everything that isn't in the top n elements to 0 by creating a
    %mask that is 1 if the element at that location is in the top n and 0
    %otherwise
    mask = ismember(trans,maxN);
    %perform the inverse transform on the new DFT that includes only the
    %top n elements of the DFT
    J = ifft2(trans.*mask);
end
