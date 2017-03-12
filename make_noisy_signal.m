%   Fichero make_noisy_signal.m
%   Fichero para construir una senial y aniadirle ruido blanco gaussiano

clear

a=0;
b=2;
N=2^11;
x=a:(b-a)/(N-1):b;
s=(4*(x.^2)).*((1-x).^3).*((2-x).^2).*cos((18*x).*(1+x));% senial

%ahora aniadimos ruido blanco de 25 dB:
s=awgn(s,25);