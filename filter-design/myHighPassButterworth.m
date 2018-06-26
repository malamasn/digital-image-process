function [ filtOut ] = myHighPassButterworth( cutOff, n, m )
    filtOut = 1 - myLowPassButterworth(cutOff, n, m);
end

