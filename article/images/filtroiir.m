%


N=20;
LOW=0.01;
w=logspace(log10(LOW),log10(1.0*pi),N);

L=6;
A=[ 0.010000   0.208000   0.406000   0.604000   0.802000  0.9];%linspace(LOW,1.0,L);
H=zeros(L,N);

for II=1:L
	H(II,:)=abs(1./(1-A(II)*exp(-w*j)));
end

w1=logspace(log10(LOW),log10(1.0/2),N);
hf=loglog(	w1,H(1,:),'->', 'markersize', 10, 'linewidth',2, ...
			w1,H(2,:),'-s', 'markersize', 10, 'linewidth',2, ...
			w1,H(3,:),'-p', 'markersize', 10, 'linewidth',2, ...
			w1,H(4,:),'-o', 'markersize', 10, 'linewidth',2, ...
			w1,H(5,:),'-v', 'markersize', 10, 'linewidth',2, ...
			w1,H(6,:),'-h', 'markersize', 10, 'linewidth',2 ...
			);
grid;
ylim([0.1,10]);
hl=legend(	['A=',sprintf('%5.2f',A( 1))], ...
			['A=',sprintf('%5.2f',A( 2))], ...
			['A=',sprintf('%5.2f',A( 3))], ...
			['A=',sprintf('%5.2f',A( 4))], ...
			['A=',sprintf('%5.2f',A( 5))], ...
			['A=',sprintf('%5.2f',A( 6))] ...
		, 'location', 'northeastoutside');
hx=xlabel('f/fs');
hy=ylabel('|G(f)|');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(hx,'Position',get(hx,'Position') + [0 0.002 0])
set(hy,'Position',get(hy,'Position') + [0.0002 0 0])
set(hl,'Position',get(hl,'Position') + [20 0 0 0])

FONTSIZE=20;
ha = gca();%% current axis object. 
set(ha,'fontsize',FONTSIZE);%% cambia solamente los ejes
%set(ht,'fontsize',FONTSIZE);%% cambia solamente el titulo
set(hx,'fontsize',FONTSIZE);%% cambia solamente el texto de x
set(hy,'fontsize',FONTSIZE);%% cambia solamente el texto de y
set(hl,'fontsize',FONTSIZE);%% cambia solamente el texto de y


print('filtroiir.eps','-deps','-portrait',['-F:',int2str(FONTSIZE)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A
R=(H(:,1)./H(:,N))'




