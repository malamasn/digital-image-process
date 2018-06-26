load 'dip_hw_2.mat'
%first we create all filters
ideal_low = myLowPassIdeal(50, 500);
butterworth_low = myLowPassButterworth(50, 5, 500);
gauss_low = myLowPassGauss(50, 500);
ideal_band = myBandPassIdeal(50, 150, 500);
butterworth_band = myBandPassButterworth(50, 150, 5, 500);
gauss_band = myBandPassGauss(50, 150, 500);
ideal_high = myHighPassIdeal(150, 500);
butterworth_high = myHighPassButterworth(150, 5, 500);
gauss_high = myHighPassGauss(150, 500);
%now we can filter the two photos
%first all the ideal filters on the two photos
a = myFilterFreq(demo2Im1, ideal_low);
figure
imshow(a)
b = myFilterFreq(demo2Im1, ideal_band);
figure
imshow(b)
c = myFilterFreq(demo2Im1, ideal_high);
figure
imshow(c)
a = myFilterFreq(demo2Im2, ideal_low);
figure
imshow(a)
b = myFilterFreq(demo2Im2, ideal_band);
figure
imshow(b)
c = myFilterFreq(demo2Im2, ideal_high);
figure
imshow(c)

%then all the butterworth filters on the two photos
a = myFilterFreq(demo2Im1, butterworth_low);
figure
imshow(a)
b = myFilterFreq(demo2Im1, butterworth_band);
figure
imshow(b)
c = myFilterFreq(demo2Im1, butterworth_high);
figure
imshow(c)
a = myFilterFreq(demo2Im2, butterworth_low);
figure
imshow(a)
b = myFilterFreq(demo2Im2, butterworth_band);
figure
imshow(b)
c = myFilterFreq(demo2Im2, butterworth_high);
figure
imshow(c)

%last all the gaussian filters on the two photos
a = myFilterFreq(demo2Im1, gauss_low);
figure
imshow(a)
b = myFilterFreq(demo2Im1, gauss_band);
figure
imshow(b)
c = myFilterFreq(demo2Im1, gauss_high);
figure
imshow(c)
a = myFilterFreq(demo2Im2, gauss_low);
figure
imshow(a)
b = myFilterFreq(demo2Im2, gauss_band);
figure
imshow(b)
c = myFilterFreq(demo2Im2, gauss_high);
figure
imshow(c)