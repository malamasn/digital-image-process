function [ filtOut ] = myHighPassIdeal( cutOff, n )
    filtOut = 1 - myLowPassIdeal(cutOff, n);
end

