function [result] = videomotiondetection(bgframe ,currentframe , thre , area )
result = 0 ;
bgframe = rgb2gray(bgframe);
currentframe = rgb2gray(currentframe);
bgsubtracted = imsubtract(bgframe , currentframe);
Imagebinary = bgsubtracted < thre ;
Imagebinary = imcomplement(Imagebinary);
Imagebinary = medfilt2(Imagebinary , [5 5]);
[l , num ] = bwlabel(Imagebinary);   % for close connected components , help bwlabel
state = regionprops(l , 'all');   % for area   , help regionprops
for i = 1: num 
    blobarea = state(i).Area ;
    if blobarea > area 
        result = 1 ;
    end
end     