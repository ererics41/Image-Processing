function J = toBinaryImage(I)
dim = size(I);
J = I;
for i = 1:dim(1,1)
    for j = 1:dim(1,2)
        if(I(i,j)<128)
            J(i,j) = 0;
        else
            J(i,j) = 255;
        end
    end
end
end