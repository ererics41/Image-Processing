%function that takes a greyscale input image and a quality factor (1-10)
function [J, C, rms] = simpleCompression (I, QF)
    dim = size(I);
    %calculate the quanitzation matrix based on the quality factor
    %base default QM, corresponds to QF 5
    QM = [16 11 10 16 24 40 51 61;
          12 12 14 19 26 58 60 55;
          14 13 16 24 40 57 69 56;
          14 17 22 29 51 87 80 62;
          18 22 37 56 68 109 103 77;
          24 35 55 64 81 104 113 92;
          49 64 78 87 103 121 120 101;
          72 92 95 98 112 100 103 99];
    % set qf to default to 5 if out of range of 1-10
    if or(QF > 10, QF < 1)
        QF = 5;
    end
    % scale quality factor such that QM is multipled by 5/QF, thus a QF of
    % 1 maps to QM*5 while a QF of 10 maps to QM*1/2
    QM = QM .* (5/QF);
    
    %shift the values by 128
    shifted = double(I) - 128;
    
    % use blockproc to call fun on all 8x8 blocks in the image. Fun takes
    % in a 8x8 block and returns the dct of that block divided by QM as a
    % rounded integer. Argument PadPartialBlocks is used to zero pad the 
    % image in case the image dimensions are not multiples of 8.
    fun = @(block_struct) round(dct2(block_struct.data)./QM);
    trans = blockproc(shifted, [8 8], fun, 'PadPartialBlocks', true);
    
    %at this point you have an dct block with many zeroes, such a
    %macroblock could then use zig-zagging and encoding to produce a
    %compressed string that can be stored with significantly less memory
    
    %calculate the number of zeroes in the current matrix
    numZeroes = sum(sum(trans(1:dim(1,1),1:dim(1,2)) == 0));
    %return the compression factor as a percent
    C = 100*numZeroes/(dim(1,1)*dim(1,2));
    
    %the following steps would be included in a decompression
    
    %invert the transform by multiplying by the QM and then performing the
    %inverse DCT and changing the values to be uint8 
    invert = @(block_struct) idct2(block_struct.data.*QM);
    J = blockproc(trans, [8 8], invert, 'PadPartialBlocks', true);
    
    %reverse the shift by adding 128
    J = uint8(J + 128);
    
    %exclude zero padded areas
    J = J(1:dim(1,1), 1:dim(1,2));
    
    %return the rmse
    rms = rmse(I, J);
end
