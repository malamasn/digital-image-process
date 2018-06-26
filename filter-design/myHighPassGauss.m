function [ filtOut ] = myHighPassGauss( sigma, m )
    filtOut = 1 - myLowPassGauss(sigma, m);
end

