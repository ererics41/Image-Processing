function J = myColorHistEQ(I)
%Uses previously written function myHistogramEq to equalize a colored image
%I. Equalizes each color plane individually and returns equalized image as
%J. Written by Eric Shen perm 3966363.
rEq = myHistogramEq(I(:,:,1));
gEq = myHistogramEq(I(:,:,2));
bEq = myHistogramEq(I(:,:,3));
J = I;
J(:,:,1) = rEq;
J(:,:,2) = gEq;
J(:,:,3) = bEq;
end

