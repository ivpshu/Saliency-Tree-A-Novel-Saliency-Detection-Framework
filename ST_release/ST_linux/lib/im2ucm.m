function [ucm2] = im2ucm(imgFile, outFile)

gPb_orient = globalPb(imgFile, outFile,0.5);
ucm2 = contours2ucm(gPb_orient, 'doubleSize');
save(outFile,'ucm2');
