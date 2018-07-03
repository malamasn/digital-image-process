function clusterIdx = mySpectralClustering( anAffinityMat, k )
    
    s = size(anAffinityMat);
    d = zeros(s);
    for i = 1:s(1)
        d(i,i) = sum(anAffinityMat(i,:));
    end
    %we are asked to use laplacian as below
    l = d - anAffinityMat;
    %we calculate the k smallest eigenvectors
    [u, t] = eigs(l, k, 'SM');
    u = real(u);
    %because we only need the real part of the eigenvectors 
    %for kmeans to work
    %final step, we calculate the labels for each row of u

    labels = kmeans(u, k);
    
    clusterIdx = labels;
    
end

