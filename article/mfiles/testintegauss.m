%
N=100000;
U=randn(1,N);
X=zeros(1,N);

figure(1)
hist(U,40);
sigmaU=std(U)

figure(2)
plot(abs(fft(U)))

A=0.5;
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
plot(X);


VarX=(std(X))^2
VarU=(std(U))^2

fatorSx_Su=sqrt(VarX/VarU)


disp('Si la entrada U es una gaussiana la salida X es indeterminada???? ver testderivgauss');
