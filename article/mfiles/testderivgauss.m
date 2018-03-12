%
%
clear
N=100000;
sigma=1;

X=sigma*randn(1,N);
U=zeros(1,N);

figure(1)
hist(X,40);
sigmaX=std(X)

U(1)=0;
for II=2:N
	U(II)=X(II)-X(II-1);
end

figure(2)
hist(U,40);
sigmaU=std(U)

factor1=(sigmaU^2)/(sigmaX^2)

figure(3)
plot(abs(fft(U)))
figure(4)
plot(abs(fft(X)))

disp('Si la salida X es una gaussiana la entrada U tambien lo es???? ver testintegauss');
