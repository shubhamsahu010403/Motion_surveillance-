% Construct a webcam object
camObj = webcam('HP Wide Vision HD Camera');

% Preview a stream of image frames.
preview(camObj);

% Acquire and display a single image frame.
img = snapshot(camObj);
imshow(img);
imwrite(img , 'bg.bmp');    %create background 