load 'dip_hw_2.mat'
%firstly we chech our directive filters with myLowPassIdeal
d = zeros(500);
for i=0:5
    d = d + myLowPassIdealDir(200, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d)
figure
imshow(a)
b = myFilterFreq(demo2Im2, d)
figure
imshow(b)

%then we run it for all 9 filters with the same parameters as demo2 
%low pass ideal
d = zeros(500);
for i=0:5
    d = d + myLowPassIdealDir(50, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d)
figure
imshow(a)
b = myFilterFreq(demo2Im2, d)
figure
imshow(b)

%high pass ideal
d = zeros(500);
for i=0:5
    d = d + myHighPassIdealDir(150, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d)
figure
imshow(a)
b = myFilterFreq(demo2Im2, d)
figure
imshow(b)

%band pass ideal
d = zeros(500);
for i=0:5
    d = d + myBandPassIdealDir(50, 150, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d)
figure
imshow(a)
b = myFilterFreq(demo2Im2, d)
figure
imshow(b)

%low pass butterworth
d = zeros(500);
for i=0:5
    d = d + myLowPassButterworthDir(50, 5, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)

%high pass butterworth
d = zeros(500);
for i=0:5
    d = d + myHighPassButterworthDir(150, 5, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)

%band pass butterworth
d = zeros(500);
for i=0:5
    d = d + myBandPassButterworthDir(50,150, 5, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)



%low pass gauss
d = zeros(500);
for i=0:5
    d = d + myLowPassGaussDir(50, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)

%high pass gauss
d = zeros(500);
for i=0:5
    d = d + myHighPassGaussDir(150, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)

%band pass gauss
d = zeros(500);
for i=0:5
    d = d + myBandPassGaussDir(50,150, 500, 30*i, 30);
end
figure
imshow(d)
a = myFilterFreq(demo2Im1, d);
figure
imshow(a)
b = myFilterFreq(demo2Im2, d);
figure
imshow(b)




