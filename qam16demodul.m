function data = qam16demodul(sig)


[mr, mc] = size(sig);

for r=1:mr
    for c=1:mc
        if real(sig(r,c)) < -2
            dr = -3;
        elseif real(sig(r,c)) < 0
            dr = -1;
        elseif real(sig(r,c)) < 2    
            dr = 1;
        else
            dr = 3;
        end

        if imag(sig(r,c)) < -2
            di = -3;
        elseif imag(sig(r,c)) < 0
            di = -1;
        elseif imag(sig(r,c)) < 2    
            di = 1;
        else
            di = 3;
        end
       
        if dr == -3
            if di == -3
                data(r,c) = 0;
            elseif di == -1
                data(r,c) = 1;
            elseif di == 1
                data(r,c) = 3;
            else
                data(r,c) = 2;
            end

        elseif dr == -1
            if di == -3
                data(r,c) = 4;
            elseif di == -1
                data(r,c) = 5;
            elseif di == 1
                data(r,c) = 7;
            else
                data(r,c) = 6;
            end    
            
        elseif dr == 1
            if di == -3
                data(r,c) = 12;
            elseif di == -1
                data(r,c) = 13;
            elseif di == 1
                data(r,c) = 15;
            else
                data(r,c) = 14;
            end    
            
        else
            if di == -3
                data(r,c) = 8;
            elseif di == -1
                data(r,c) = 9;
            elseif di == 1
                data(r,c) = 11;
            else
                data(r,c) = 10;
            end    
        end        
    end
end

