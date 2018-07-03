load 'dip_hw_3.mat'

aff1 = Image2Graph(d2a);
aff2 = Image2Graph(d2b);

%k=0 as argument in our function
rng(1)
l1 = myRecursiveNCuts(aff1, 0)

rng(1)
l2 = myRecursiveNCuts(aff2, 0)
%l1 and l2 are the two vectors with the labels