load 'dip_hw_3.mat'

aff1 = Image2Graph(d2a);
aff2 = Image2Graph(d2b);


rng(1)
l1 = myNCuts(aff1, 2);

rng(1)
l2 = myNCuts(aff2, 2);



%we have calculated the clusters in the recursive case for only one call
%using the myNCuts function with input argument k = 2.
%now we have to show the clustered images 

%now we show the two images clustered to two groups 

im = zeros(50);
for i=1:50
    for j=1:50
        if l1((i-1)*50+j) == 2
            im(i,j)=1;  
        end
    end
end
figure
imshow(im)



im = zeros(50);
for i=1:50
    for j=1:50
        if l2((i-1)*50+j) == 2
            im(i,j)=1;  
        end
    end
end
figure
imshow(im)