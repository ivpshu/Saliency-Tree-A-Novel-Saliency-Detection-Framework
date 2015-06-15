% demo for ST
clear all;close all;clc;
run('.\vlfeat-0.9.17\toolbox\vl_setup')

img = '.\data\image\0_0_951.jpg';
ucm2 = '.\data\ucm2\0_0_951.mat';
[imDir, name,ext] = fileparts(img);
imgName = [name ext];
resDir = '.\res\';
if ~exist(resDir,'dir')
    mkdir(resDir);
end

outSal = [resDir name '_ST.png'];
if exist(outSal, 'file')
    disp(imgName);
    disp('Done!');
   break;
else    
    disp(imgName);
    saliencyTree(imDir, ucm2, imgName, resDir);
    disp('Done!');
end
