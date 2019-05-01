function sigD = qam64demmodul(sigN)

[mr, mc] = size(sigN);

for r=1:mr
    for c=1:mc
        if real(sigN(r,c)) < -6
            dr = -7;
        elseif real(sigN(r,c)) < -4
            dr = -5;
        elseif real(sigN(r,c)) < -2
            dr = -3;
        elseif real(sigN(r,c)) < 0
            dr = -1;
        elseif real(sigN(r,c)) < 2
            dr = 1;
        elseif real(sigN(r,c)) <4
            dr = 3;
        elseif real(sigN(r,c)) <6
            dr = 5;
        else
            dr = 7;
            
        end
        
        if imag(sigN(r,c)) < -6
            di = -7;
        elseif imag(sigN(r,c)) < -4
            di = -5;
        elseif imag(sigN(r,c)) < -2
            di = -3;
        elseif imag(sigN(r,c)) < 0
            di = -1;
        elseif imag(sigN(r,c)) < 2
            di = 1;
        elseif imag(sigN(r,c)) <4
            di = 3;
        elseif imag(sigN(r,c)) <6
            di = 5;    
        else
            di = 7;
            
        end
        
        if dr == -7
            if di == -7
                sigD(r,c) = 0;
            elseif di == -5
                sigD(r,c) = 1;
            elseif di == -3
                sigD(r,c) = 3;
            elseif di == -1
                sigD(r,c) = 2;
            elseif di == 1
                sigD(r,c) = 6;
            elseif di == 3
                sigD(r,c) = 7;
            elseif di == 5
                sigD(r,c) = 5;
            else
                sigD(r,c) = 4;                             
            end
            
        elseif dr == -5
            if di == -7
                sigD(r,c) = 8;
            elseif di == -5
                sigD(r,c) = 9;
            elseif di == -3
                sigD(r,c) = 11;
            elseif di == -1
                sigD(r,c) = 10;
            elseif di == 1
                sigD(r,c) =14;
            elseif di == 3
                sigD(r,c) = 15;
            elseif di == 5
                sigD(r,c) = 13;
            else
                sigD(r,c) = 12;                             
            end
        elseif dr == -3
            if di == -7
                sigD(r,c) = 24;
            elseif di == -5
                sigD(r,c) = 25;
            elseif di == -3
                sigD(r,c) = 27;
            elseif di == -1
                sigD(r,c) = 26;
            elseif di == 1
                sigD(r,c) = 30;
            elseif di == 3
                sigD(r,c) = 31;
            elseif di == 5
                sigD(r,c) = 29;
            else
                sigD(r,c) = 28;                             
            end    
        elseif dr == -1
            if di == -7
                sigD(r,c) = 16;
            elseif di == -5
                sigD(r,c) = 17;
            elseif di == -3
                sigD(r,c) = 19;
            elseif di == -1
                sigD(r,c) = 18;
            elseif di == 1
                sigD(r,c) = 22;
            elseif di == 3
                sigD(r,c) = 23;
            elseif di == 5
                sigD(r,c) = 21;
            else
                sigD(r,c) = 20;                             
            end     
         elseif dr == 1
            if di == -7
                sigD(r,c) = 48;
            elseif di == -5
                sigD(r,c) = 49;
            elseif di == -3
                sigD(r,c) = 51;
            elseif di == -1
                sigD(r,c) = 50;
            elseif di == 1
                sigD(r,c) = 54;
            elseif di == 3
                sigD(r,c) = 55;
            elseif di == 5
                sigD(r,c) = 53;
            else
                sigD(r,c) = 52;                             
            end   
        elseif dr == 3
            if di == -7
                sigD(r,c) = 56;
            elseif di == -5
                sigD(r,c) = 57;
            elseif di == -3
                sigD(r,c) = 59;
            elseif di == -1
                sigD(r,c) = 58;
            elseif di == 1
                sigD(r,c) = 62;
            elseif di == 3
                sigD(r,c) = 63;
            elseif di == 5
                sigD(r,c) = 61;
            else
                sigD(r,c) = 60;                             
            end    
        elseif dr == 5
            if di == -7
                sigD(r,c) = 40;
            elseif di == -5
                sigD(r,c) = 41;
            elseif di == -3
                sigD(r,c) = 43;
            elseif di == -1
                sigD(r,c) = 42;
            elseif di == 1
                sigD(r,c) = 46;
            elseif di == 3
                sigD(r,c) = 47;
            elseif di == 5
                sigD(r,c) = 45;
            else
                sigD(r,c) = 44;                             
            end    
        elseif dr == 7
            if di == -7
                sigD(r,c) = 32;
            elseif di == -5
                sigD(r,c) = 33;
            elseif di == -3
                sigD(r,c) = 35;
            elseif di == -1
                sigD(r,c) = 34;
            elseif di == 1
                sigD(r,c) = 38;
            elseif di == 3
                sigD(r,c) = 39;
            elseif di == 5
                sigD(r,c) = 37;
            else
                sigD(r,c) = 36;                             
            end           
               
        end
    end
end