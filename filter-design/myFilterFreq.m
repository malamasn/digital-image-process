function [ imOut ] = myFilterFreq( imIn, someFilt )
    n = size(imIn);
    %chech if they have same dimentions
    if size(someFilt) ~= n
        fprintf('Image and filter must have same dimentions!\n')
        return;
    end
    temp = zeros(n);
    %we move the dc component to the center of the image
    for i=1:n
        for j=1:n
            temp(i,j) = (-1)^(i+j-2);
        end
    end
    f = imIn.*temp;
    F = fft2(f);
    G = someFilt.*F;
    g = ifft2(G);
    imOut = g.*temp;
end

