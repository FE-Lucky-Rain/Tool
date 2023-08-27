clc
clear
close all

[fileNames,pathname_input]=uigetfile('*.pdf','Select pdf file','MultiSelect','on');
pathout=uigetdir(pathname_input,'Select pdf Output path');

fileNames=cellfun(@(x) strcat(pathname_input,x),fileNames,'UniformOutput',false);

outputName='MergedPDF.pdf';
outputFile=strcat(pathout,'\',outputName);
mergePdfs(fileNames, outputFile)