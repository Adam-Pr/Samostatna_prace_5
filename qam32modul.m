function sig = qam32modul(in)
[mr, mc] = size(in);
for r=1:mr
    for c=1:mc
        switch in(r,c)
            case{7, 6, 5, 4}
                sigI(r,c)=-5;
            case{3, 11, 10, 9, 8, 0} 
                sigI(r,c)=-3;
            case{2, 15, 14, 13, 12, 1}
                sigI(r,c)=-1;
            case{30, 19, 18, 17, 16, 29}
                sigI(r,c)=1;
            case{31, 23, 22, 21, 20, 28}
                sigI(r,c)=3;
            case{27, 26, 25, 24}
                sigI(r,c)=5;
        end
    end
end

for r=1:mr
    for c=1:mc
        switch in(r,c)
            case{3, 2, 30, 31}
                sigQ(r,c)=-5;
            case{7, 11, 15, 19, 23, 27}
                sigQ(r,c)=-3;
            case{6, 10, 14, 18, 22, 26}
                sigQ(r,c)=-1;
            case{5, 9, 13, 17, 21, 25}
                sigQ(r,c)=1;
            case{4, 8, 12, 16, 20, 24}
                sigQ(r,c)=3;
            case{0, 1, 29, 28}
                sigQ(r,c)=5;
        end
    end
end

sig = sigI+i*sigQ;
