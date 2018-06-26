function [ filtOut ] = myBandPassGauss( sigmaLow, sigmaHigh, m )
    filtOut = myLowPassGauss(sigmaHigh, m) - myLowPassGauss(sigmaLow, m);
end


