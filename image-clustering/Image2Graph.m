function myAffinityMat = Image2Graph( imIn )
%we are asked to create an affinity matrix of an input image imIn
    %i find input image's size
    s = size(imIn);
    if numel(s) == 2
        s(3) = 1;
    end
    mn = s(1)*s(2);
    
    %myAffinityMat will be symmetric with mn*mn elements
    aff = zeros(mn);
    for x1 = 1:s(1)
        for y1 = 1:s(2) 
           for x2 = 1:s(1)
               for y2 = 1:s(2)
%i and j are aff's indexes and are calculated as below
                   i = (x1-1)*s(2) + y1;
                   j = (x2-1)*s(2) + y2;
                   %aff is symmetric so we need only upper trigonal matrix
                   if i > j 
                       continue 
                   end
%d is the euclidean distance between two pixels of the image
                   d = 0;
                   for n = 1:s(3)
                       d = d + ( imIn(x1,y1,n) - imIn(x2,y2,n) )^2;
                   end
                   d = sqrt(d);
%the equation below is given in the exercise
                   aff(i,j) = 1/exp(d);
                   aff(j,i) = aff(i,j); %because is symmetric
               end
           end
        end
    end
    myAffinityMat = aff;

end

