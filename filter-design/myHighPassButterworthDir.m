function filtOut = myHighPassButterworthDir(cutOff , n, m, theta , phi)
    temp = myHighPassButterworth(cutOff, n, m);
    while theta >= 180
        theta = theta - 180;
    end
    %first we get the whole ideal filter and then we keep only the values
    %that are inside the given area
    for i=1:m
        for j=1:m
            a = atan2d(j-m/2, i-m/2);
            if abs(a-theta) > phi/2
                temp(i,j) = 0;
            end
        end
    end
    %we rotate because matlab returns x'x axis to the vertical direction
    temp = rot90(temp);
    filtOut = temp;
    %now filtOut has half the filter we want to get
    %so we need to also get the other half, which is symmetric to (m/2,m/2)
    temp = zeros(m);
    for i=1:m
        for j=1:m
            if (filtOut(i,j) > 0)
                temp(m-i+1,m-j+1) = filtOut(i,j);
            end
        end
    end
    filtOut = filtOut + temp;
    figure
    imshow(filtOut)
end