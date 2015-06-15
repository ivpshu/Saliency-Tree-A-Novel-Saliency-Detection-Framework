% demo for ST
clear all;close all;clc;
addpath lib;run('./vlfeat-0.9.17/toolbox/vl_setup')

image = './data/image/0_0_951.jpg';
[imDir, name,ext] = fileparts(image);imgName = [name ext];
ucm2Dir = './data/ucm2/';
if ~exist(ucm2Dir,'dir')
    mkdir(ucm2Dir);
end
resDir = './res/';
if ~exist(resDir,'dir')
    mkdir(resDir);
end

outSal = [resDir name '_ST.png'];
if exist(outSal, 'file')
    disp(imgName);disp('Done!');
   break;
else    
    disp(imgName);
    outFile = fullfile(ucm2Dir,[name '.mat']);
    if ~exist(outFile,'file')
        im2ucm(image, outFile);
    end
    saliencyTree(imDir, ucm2Dir, imgName, resDir);
    disp('Done!');
end
