### Saliency-Tree-A-Novel-Saliency-Detection-Framework  
1. This code is for the paper: [1] Z. Liu, W. Zou, O. Le Meur, "Saliency tree: A novel saliency detection framework," 
IEEE Transactions on Image Processing, vol. 23, no. 5, pp. 1937-1952, May 2014. It can only be used for non-comercial 
purpose. If you use our code, please cite the paper [1].

2. This code  needs VLFeat open source library which can be downloaded at  http://www.vlfeat.org/, and the source code for 
[2] P. Arbelaez, M. Maire, C. Fowlkes, J. Malik, "Contour detection and hierarchical image segmentation," IEEE Transactions on 
Pattern Analysis and Machine Intelligence, vol. 33, no. 5, pp. 898-916, May 2011. The source code for [2] can be downloaded at 
http://www.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html

3.To run the code

(1)For Windows
Please first use the source code of [2] (Note that you need to use the file "im2ucm.m" in the folder ST_win\ to replace the corresponding 
original file in the source code [2], to generate the same results in [1]. We use a resizing factor of 0.5 for speedup.), to generate 
the Matlab mat file for ultrametric contour map (UCM).
Then please put your image file into the folder ST_win\data\image\, and the mat file for UCM into the folder ST_win\data\ucm2\, and run 'demo.m'.

(2)For Linux
Please put your image file into the folder ST_linux\data\image\, and run 'demo.m'. The mat file for UCM will be automatically generated.

4. The generated saliency map is with the filename of **_ST.png

For any questions, please contact Zhi Liu.

