load 'dip_hw_3.mat'

%check the usage of my function
rng(1)
l1 = mySpectralClustering(d1a, 2)
rng(1)
l2 = mySpectralClustering(d1a, 3)
rng(1)
l3 = mySpectralClustering(d1a, 4)