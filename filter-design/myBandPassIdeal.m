function [ filtOut ] = myBandPassIdeal( cutOffLow, cutOffHigh, n )
    filtOut = myLowPassIdeal(cutOffHigh, n) - myLowPassIdeal(cutOffLow, n);
end

