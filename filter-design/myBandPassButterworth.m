function [ filtOut ] = myBandPassButterworth( cutOffLow, cutOffHigh, n, m )
    filtOut = myLowPassButterworth(cutOffHigh, n, m) - myLowPassButterworth(cutOffLow, n, m);
end


