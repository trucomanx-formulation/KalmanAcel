%

N=2048;

U=randn(1,N);
f=linspace(0,1,N);

D=sqrt(sum(U.^2))

hf=figure(2);
plot(f,abs(fft(U)));%,f,D*ones(1,N), 'linewidth',12);
grid;
hx=xlabel('f/fs');
hy=ylabel('|FFT{U}|');
ht=title('Fourier transform of random variable U');
%hl=legend('Simulated','Theoretician');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FONTSIZE=20;
ha = gca();%% current axis object. 
set(ha,'fontsize',FONTSIZE);%% cambia solamente los ejes
set(ht,'fontsize',FONTSIZE);%% cambia solamente el titulo
set(hx,'fontsize',FONTSIZE);%% cambia solamente el texto de x
set(hy,'fontsize',FONTSIZE);%% cambia solamente el texto de y
%set(hl,'fontsize',FONTSIZE);%% cambia solamente el texto de y


print('fftU.eps','-depsc','-portrait',['-F:',int2str(FONTSIZE)]);


