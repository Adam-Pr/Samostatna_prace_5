function sig = qam16modul(in)


[mr, mc] = size(in);

for r=1:mr
    for c=1:mc
        switch in(r,c)
            case {0, 1, 3, 2}
                sigI(r,c)=-3;
            case {4, 5, 7, 6}
                sigI(r,c)=-1;
            case {12, 13, 15, 14}
                sigI(r,c)=1;
            case {8, 9, 11, 10}
                sigI(r,c)=3;
        end        
        
    end
end

for r=1:mr
    for c=1:mc
        switch in(r,c)
            case {0, 4, 12, 8}
                sigQ(r,c)=-3;
            case {1, 5, 13, 9}
                sigQ(r,c)=-1;
            case {3, 7, 15, 11}
                sigQ(r,c)=1;
            case {2, 6, 14, 10}
                sigQ(r,c)=3;
        end        
        
    end
end

sig = sigI+i*sigQ;