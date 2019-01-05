function J = floydSteinbergDithering(I)
dim = size(I);
J = I;
for i = 1:dim(1,1)
    for j = 1:dim(1,2)
        orig = J(i,j);
        if(J(i,j)<128)
            J(i,j) = 0;
        else
            J(i,j) = 255;
        end
        diff = orig-J(i,j);
        if(i<dim(1,1))
            J(i+1,j) = J(i+1,j) + round(diff*7/16);
        end
        if(j < dim(1,2))
            if(i>1)
                J(i-1,j+1) = J(i-1,j+1) + round(diff*3/16);
            end
            J(i,j+1) = J(i,j+1)+ round(diff*5/16);
            if(i<dim(1,1))
                J(i+1,j+1) = J(i+1,j+1) + round(diff/16);
            end
        end
    end
end
end