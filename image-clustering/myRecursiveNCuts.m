function [ clusterIdx ] = myRecursiveNCuts( anAffinityMat, clusters )

    t1 = 5;
    t2 = 0.2;

 %in the first loop we use myNCuts with k = 2 and then call the recursive
 %function
    if clusters == 0 
        clusters = myNCuts(anAffinityMat,2);
        clusterIdx = myRecursiveNCuts(anAffinityMat, clusters);
        return
    else
        %we check if the size of a cluster is smaller than t1
        flag = 0; %false
        max_value = max(clusters);
        for i=1:max_value
            if sum(clusters(:)==i) < t1
                flag = 1; %true
                break
            end
        end
        if flag
            clusterIdx = clusters;
    %        return
        end
        %then we check if Ncut is more than t1 
        if calculateNcut(anAffinityMat, clusters) > t2
            clusterIdx = clusters;
     %       return
        end
        s = size(clusters);
%we create two vectors with elements of each cluster in them
%the labels are in the right positions and zeros are in all other positions 
%that way we split the two clusters in order to split them more, one at a
%time
        one = zeros(s);
        two = zeros(s);
        for i=1:s
            if clusters(i)
                a = clusters(i); %a=clusters(1) but i check in case there 
                break            %is an unexpected zero
            end
        end
        for i=1:s
            if clusters(i) == a
                one(i)=a;
                two(i)=0;
            elseif clusters(i)
                one(i)=0;
                two(i)=clusters(i);
            else
                one(i)=0;
                two(i)=0;
            end
        end
%we create two vectors of labels from one & two without zeros to pass them 
%as arguments in myNCuts
        n1=1;
        n2=1;
        for i=1:s
            if one(i)>0
                clusters_one(n1)=one(i);
                n1 = n1 + 1;
            end
            if two(i)>0
                clusters_two(n2)=two(i);
                n2 = n2 + 1;
            end
        end
        
%we create two sub-affinity matrixes, one for each cluster
%aff1 & aff2
        aff1 = zeros(numel(clusters_one));
        aff2 = zeros(numel(clusters_two));
        n1 = 1;
        for i=1:s
            n2 = 1;
            if one(i)
                for j=1:s
                    if one(j) 
                        aff1(n1,n2) = anAffinityMat(i,j);
                        n2 = n2 +1;
                    end
                end
                n1 = n1 +1;
            end
        end

        n1 = 1;
        for i=1:s
            n2 = 1;
            if two(i)
                for j=1:s
                    if two(j) 
                        aff2(n1,n2) = anAffinityMat(i,j);
                        n2 = n2 +1;
                    end
                end
                n1 = n1 +1;
            end
        end
     
     
     %i split every cluster in two subclusters and get the new labels
     %but these labels don't have any connection with the previous ones
        l1 = myNCuts(aff1, 2);
        l2 = myNCuts(aff2, 2);
        
        %%next iteration
        l1 = myRecursiveNCuts(aff1, l1);
        l2 = myRecursiveNCuts(aff2, l2);
        
        clusters_one = 10*clusters_one + l1;
        clusters_two = 10*clusters_two + l2;
        
        clusterIdx = zeros(s);
        n1=1;
        n2=1;
        for i=1:s
            if one(i)>0
                clusterIdx(i) = clusters_one(n1);
                n1 = n1 +1;
            elseif two(i)>0
                clusterIdx(i) = clusters_two(n2);
                n2 = n2 +1;
            end
        end  
        
        return
        
    end
    
end

