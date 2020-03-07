% s: the input signal
% fs: sampling rate
% c:MFCCs
%%%%%%%%%%%%
function c = mfcc(s, fs,m,n)

spectrum=spec(s, fs, m, n);%find the spectrum
mb = melfb(20, n, fs);%build the mel-spaced filterbank
n2 = floor(n / 2)+1;%take the first half of spectrum
mf = mb * (abs(spectrum(1:n2, :)).^2/n);%mel power spectrum coefficients
mf=mf-mean(mf,2)+1e-8;%mean normalization
c = dct(log(mf));%cepstrum
c=real(c(2:13,:));
c=c-mean(c,2)+1e-8;%mean normalization
%c(1,:)=[];%exclude the first component

end
