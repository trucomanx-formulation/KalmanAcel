%
function H=myautocov(X,N)

	
	L=length(X);

	H=zeros(1,N);

	for n=1:N
	if(L>n)
		
		%% E[X_t X_{t+n}]
		mX0 =mean(X(1:L-n));
		mXLn=mean(X(1+n:L));

		S=0;
		for JJ=1:L-n
			S=S+X(JJ)*X(JJ+n);
		end
		S=S/(L-n);

		H(n)=S-mX0*mXLn;
	end
	end

end
