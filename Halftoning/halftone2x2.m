function J = halftone2x2(I)
dim = size(I);
J = zeros(dim.*2);
for i = 1:dim(1,1)
    for j = 1:dim(1,2)
        newI = (i-1)*2+1;
        newJ = (j-1)*2+1;
        if(I(i,j) < 51)
            J(newI,newJ) = 0;
            J(newI+1,newJ) = 0;
            J(newI,newJ+1) = 0;
            J(newI+1,newJ+1) = 0;
        elseif(I(i,j) < 102)
            J(newI,newJ) = 0;
            J(newI+1,newJ) = 255;
            J(newI,newJ+1) = 0;
            J(newI+1,newJ+1) = 0;
        elseif(I(i,j) < 153)
            J(newI,newJ) = 0;
            J(newI+1,newJ) = 255;
            J(newI,newJ+1) = 255;
            J(newI+1,newJ+1) = 0;
        elseif(I(i,j) < 204)
            J(newI,newJ) = 255;
            J(newI+1,newJ) = 255;
            J(newI,newJ+1) = 255;
            J(newI+1,newJ+1) = 0;
        else
            J(newI,newJ) = 255;
            J(newI+1,newJ) = 255;
            J(newI,newJ+1) = 255;
            J(newI+1,newJ+1) = 255;
        end
    end
end
end