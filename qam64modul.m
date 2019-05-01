function sig = qam64modul(in)
[mr, mc] = size(in);
for r=1:mr
    for c=1:mc
        switch in(r,c)
            case {0, 1, 3, 2, 6, 7, 5, 4}
                sigI(r,c)=-7;
            case {8, 9, 11, 10, 14, 15, 13, 12}
                sigI(r,c)=-5;
            case {24, 25, 27, 26, 30, 31, 29, 28}
                sigI(r,c)=-3;
            case {16, 17, 19, 18, 22, 23, 21, 20}
                sigI(r,c)=-1;
            case {48, 49, 51, 50, 54, 55, 53, 52}
                sigI(r,c)=1;
            case {56, 57, 59, 58, 62, 63, 61, 60}
                sigI(r,c)=3;
            case {40, 41, 43, 42, 46, 47, 45, 44}
                sigI(r,c)=5;
            case {32, 33, 35, 34, 38, 39, 37, 36}
                sigI(r,c)=7;
        end        
        
    end
end

for r=1:mr
    for c=1:mc
        switch in(r,c)
            case {0, 8, 24, 16, 48, 56, 40, 32}
                sigQ(r,c)=-7;
            case {1, 9, 25, 17, 49, 57, 41, 33}
                sigQ(r,c)=-5;
            case {3, 11, 27, 19, 51, 59, 43, 32}
                sigQ(r,c)=-3;
            case {2, 10, 26, 18, 50, 58, 42, 34}
                sigQ(r,c)=-1;
            case {6, 14, 30, 22, 54, 62, 46, 38}
                sigQ(r,c)=1;
            case {7, 15, 31, 23, 55, 63, 47, 39}
                sigQ(r,c)=3;
            case {5, 13, 29, 21, 53, 61, 45, 37}
                sigQ(r,c)=5;
            case {4, 12, 28, 20, 52, 60, 44, 36}
                sigQ(r,c)=7;
        end        
        
    end
end

sig = sigI+i*sigQ;