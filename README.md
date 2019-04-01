# Image-Processing
A collection of several image processing functions. Each folder contains Matlab code for the function, a test driver for that function as well as one or more test images.

Contrast Enhancement: 
A function which uses histogram equalization to increase constrast in an image. Separate functions for colored vs greyscale images are written as well as separate test drivers. 

Dithering:
A function and test driver implementation of Floyd Steinberg Dithering. 

Halftoning:
An implementation of halftoning for 2x2 and 3x3 images. Function do not maintain original image size and increase image size by a factor of 2 or 3 after halftoning.

Reconstruction: 
A transformation of an image into it's DCT or DFT equivalent and keeping only a small fraction of the DCT or DFT coefficients. The image is then transformed back to compare to the original image and RMSE is calculated as a measure of how well an image can be restored from a few DCT or DFT coefficients. 

SimpleCompression:
A simple compression implementation based on the JPEG compression algorithm. This compression divides an image into blocks and quantizes the blocks using a given QM seen in the code. The algorithm allows for a qualify factor from 1-10 with 10 being the highest quality and 1 being the lowest quality. 

