function  [ filtOut ] = myLowPassIdeal( cutOff, n )
    temp = zeros(n);
    for i=1:n
        for j=1:n
            d = ((i-n/2)^2+(j-n/2)^2)^(1/2);
            if (d <= cutOff)
                temp(i,j) = 1;
            end
        end
    end
    filtOut = temp;
end

