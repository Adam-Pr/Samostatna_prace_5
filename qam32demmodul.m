% function sigD=qam32demmodul(sigN,sig,noiselev)
%   noise=noiselev*randn(size(sig));
%   sigD = (sigN-noise);
%   save('test3.mat', 'sigD');
%             
% end
function sigD = qam32demmodul(sigN)

[mr, mc] = size(sigN);

for r=1:mr
    for c=1:mc
        if real(sigN(r,c)) < -4
            dr = -5;
        elseif real(sigN(r,c)) < -2
            dr = -3;
        elseif real(sigN(r,c)) < 0
            dr = -1;
        elseif real(sigN(r,c)) < 2
            dr = 1;
        elseif real(sigN(r,c)) <4
            dr = 3;
        else
            dr = 5;
            
        end
        
        if imag(sigN(r,c)) < -4
            di = -5;
        elseif imag(sigN(r,c)) < -2
            di = -3;
        elseif imag(sigN(r,c)) < 0
            di = -1;
        elseif imag(sigN(r,c)) < 2
            di = 1;
        elseif imag(sigN(r,c)) <4
            di = 3;
        else
            di = 5;
            
        end
        
        if dr == -5
            if di == -3
                sigD(r,c) = 7;
            elseif di == -1
                sigD(r,c) = 6;
            elseif di == 1
                sigD(r,c) = 5;
            else di == 3
                sigD(r,c) = 4;
                         
            end
            
        elseif dr == -3
            if di == -5
                sigD(r,c) = 3;
            elseif di == -3
                sigD(r,c) = 11;
            elseif di == -1
                sigD(r,c) = 10;
            elseif di == 1
                sigD(r,c) = 9;
            elseif di ==3
                sigD(r,c) = 8;
            else
                sigD(r,c) = 0;
            end
            
        elseif dr == -1
            if di == -5
                sigD(r,c) = 2;
            elseif di == -3
                sigD(r,c) = 15;
            elseif di == -1
                sigD(r,c) = 14;
            elseif di == 1
                sigD(r,c) = 13;
            elseif di ==3
                sigD(r,c) = 12;
            else
                sigD(r,c) = 1;
            end
            
        elseif dr == 1
            if di == -5
                sigD(r,c) = 30;
            elseif di == -3
                sigD(r,c) = 19;
            elseif di == -1
                sigD(r,c) = 18;
            elseif di == 1
                sigD(r,c) = 17;
            elseif di ==3
                sigD(r,c) = 16;
            else
                sigD(r,c) = 29;
            end
            
        elseif dr == 3
            if di == -5
                sigD(r,c) = 31;
            elseif di == -3
                sigD(r,c) = 23;
            elseif di == -1
                sigD(r,c) = 22;
            elseif di == 1
                sigD(r,c) = 21;
            elseif di ==3
                sigD(r,c) = 20;
            else
                sigD(r,c) = 28;
            end
            
         elseif dr == 5
            if di == -3
                sigD(r,c) = 27;
            elseif di == -1
                sigD(r,c) = 26;
            elseif di == 1
                sigD(r,c) = 25;
            else di == 3
                sigD(r,c) = 24;
            end
        end
    end
end
  save('test3.mat', 'sigD');
            
