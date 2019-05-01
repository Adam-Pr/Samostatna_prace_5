function sigN=addnoise(sig,noiselev)
  noise=noiselev*randn(size(sig));
  sigN = (sig+noise);

% sigEner = norm(sig(:))^2;                    % energy of the signal
% noiseEner = sigEner/(10^(noiselev/10));        % energy of noise to be added
% noiseVar = noiseEner/(length(sig(:)-1));     % variance of noise to be added
% noiseStd = sqrt(noiseVar);                   % std. deviation of noise to be added
% noise = noiseStd*randn(size(sig));           % noise
% nigN = sig+noise;
end