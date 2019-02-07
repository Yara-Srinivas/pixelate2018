global botclr1 botclr2 n img vid rect black blue green 

vid = videoinput('winvideo', 2, 'RGB24_1280x960');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

src.Brightness = 103;

src.Brightness = 78;

src.Brightness = 53;

src.Brightness = 78;

src.Contrast = 57;

src.Contrast = 32;

src.Exposure = -7;

src.Exposure = -6;

src.Exposure = -7;

src.Gain = 89;

src.Gain = 64;

src.Gain = 39;

src.Saturation = 57;

src.Saturation = 82;

src.Saturation = 107;

src.Saturation = 82;

src.Saturation = 57;

src.Sharpness = 49;

src.Sharpness = 74;

src.Brightness = 53;

src.Saturation = 32;

src.Brightness = 78;

preview(vid);
    img=getsnapshot(vid);
[img,rect]=imcrop(img);
img=getimg();


n=8;


%EXTRACTING COLORS


red=extract(img);
green=extract(img);
black=extract(img);
blue=extract(img);
%brown=extract(img);
yellow=extract(img);
white=extract(img);
%grey=extract(img);
botclr1=extract(img);
botclr2=extract(img);

%THRESHOLDING


redpart=threshold(img,red);


greenpart=threshold(img,green);
%to remove any extra part using bwarea open
greenpart=bwareaopen(greenpart,4000);


blackpart=threshold(img,black);
bluepart=threshold(img,blue);
%brownpart=threshold(img,brown);
yellowpart=threshold(img,yellow);
whitepart=threshold(img,white);
%greypart=threshold(img,grey);
botclr1part=threshold(img,botclr1);
botclr2part=threshold(img,botclr2);




imtool(redpart);
imtool(greenpart);
imtool(blackpart);
imtool(bluepart);
imtool(yellowpart);
imtool(whitepart);
%imtool(greypart);
imtool(botclr1part);
imtool(botclr2part);





                                            %create primat here to see if it is created properly
primat=priority(img,yellow,black,green)
spacemat=spaceship2(img,yellow,black,red,white)


