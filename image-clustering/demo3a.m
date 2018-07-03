load 'dip_hw_3.mat'

aff1 = Image2Graph(d2a);
aff2 = Image2Graph(d2b);


rng(1)
l1 = myNCuts(aff1, 2);
rng(1)
l2 = myNCuts(aff1, 3);
rng(1)
l3 = myNCuts(aff1, 4);

rng(1)
l4 = myNCuts(aff2, 2);
rng(1)
l5 = myNCuts(aff2, 3);
rng(1)
l6 = myNCuts(aff2, 4);

%we have calculated the clusters in all asked cases
%now we have to show the clustered images 

%first we show the two images clustered to two groups 

im = zeros(50);
for i=1:50
    for j=1:50
        if l1((i-1)*50+j) == 2
            im(i,j)=0.9;  
        end
    end
end
figure
imshow(im)



im = zeros(50);
for i=1:50
    for j=1:50
        if l4((i-1)*50+j) == 2
            im(i,j)=0.9;  
        end
    end
end
figure
imshow(im)

%then we show the two images clustered to three groups  

im = zeros(50);
for i=1:50
    for j=1:50
        if l2((i-1)*50+j) == 2
            im(i,j)=0.5;
        elseif l2((i-1)*50+j) == 3
            im(i,j)=0.9;  
        end
    end
end
figure
imshow(im)




im = zeros(50);
for i=1:50
    for j=1:50
        if l5((i-1)*50+j) == 2
            im(i,j)=0.5;
        elseif l5((i-1)*50+j) == 3
            im(i,j)=0.9;  
        end
    end
end
figure
imshow(im)


%finally we show the two images clustered to four groups 

im = zeros(50);
for i=1:50
    for j=1:50
        if l3((i-1)*50+j) == 2
            im(i,j)=0.3;
        elseif l3((i-1)*50+j) == 3
            im(i,j)=0.7;
        elseif l3((i-1)*50+j) == 4
            im(i,j)=1;  
        end
    end
end
figure
imshow(im)

im = zeros(50);
for i=1:50
    for j=1:50
        if l6((i-1)*50+j) == 2
            im(i,j)=0.3;
        elseif l6((i-1)*50+j) == 3
            im(i,j)=0.7;
        elseif l6((i-1)*50+j) == 4
            im(i,j)=1;  
        end
    end
end
figure
imshow(im)