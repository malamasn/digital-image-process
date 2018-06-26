function [ filtOut ] = myLowPassGauss( sigma, m )
    temp = zeros(m);
    for i=1:m
        for j=1:m
            d = (i-m/2)^2+(j-m/2)^2;
            temp(i,j) = exp(-d/(2*sigma^2));
        end
    end
    filtOut = temp;
end

