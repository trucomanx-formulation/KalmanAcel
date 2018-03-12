%
N=10000;
Q=1.0;
A=0.5;
R=4.1;

U=sqrt(Q)*randn(1,N);
X=zeros(1,N);

figure(1)
hist(U,40);
sigmaU=std(U)

figure(2)
plot(abs(fft(U)))


X(1)=0;
for II=2:N
    X(II)=A*X(II-1)+U(II);
end


figure(3)
hist(X,40);
sigmaX=std(X)

figure(4);
plot(abs(fft(X)));

figure(5);
V=sqrt(R)*randn(1,N);
Z=X+V;
absfftZ=abs(fft(Z));
plot(absfftZ);

sigmaV=std(V)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C1=myautocov(X,10)/var(X);plot(C1)
C2=myautocov(Z,10)/var(X);plot(C2)


