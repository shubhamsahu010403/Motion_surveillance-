clc ; 
clear ; 
close all ; 
thre = 30 ; 
area = 4000 ; 
camObj = webcam('HP Wide Vision HD Camera');

bgframe = imread('bg.bmp');
while(1)


% Acquire and display a single image frame.
Currentframe  = snapshot(camObj);
imshow(Currentframe);
[result] = videomotiondetection(bgframe ,Currentframe , thre , area );

if result == 1 
     disp ('Motion  detected ');
     imwrite(Currentframe , 'motiondetected.jpg');
     pathname = pwd ; 
     attachedfilename = strcat (pwd , '\' , 'motiondetected.jpg');
     disp ('Sending email ');
     sendim(attachedfilename);

else 
    disp ('Motion not detected ');
end 

end 