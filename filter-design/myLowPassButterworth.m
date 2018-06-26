function [ filtOut ] = myLowPassButterworth( cutOff, n, m )
    temp = zeros(m);
    for i=1:m
        for j=1:m
            d = ((i-m/2)^2+(j-m/2)^2)^(1/2);
            temp(i,j) = 1/(1+(d/cutOff)^(2*n));
        end
    end
    filtOut = temp;
end

