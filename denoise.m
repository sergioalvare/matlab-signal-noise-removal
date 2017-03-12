% Fichero denoise.m
% Eliminacion del ruido de una senial
% La variable externa s contiene la senial contaminada con el ruido

w='coif5';%wavelet a utilizar
n=9;%niveles de transformada
thr_met='h';%metodo de thresholding: Hard

coef=sqrt(2*log(length(s)));

[C,L]=wavedec(s,n,w);%TRANSFORMADA WAVELET
% help wavedec
% C  = [app. coef.(N)|det. coef.(N)|... |det. coef.(1)]

% Calculo del umbral o threshold:
cD1=detcoef(C,L,1);%extraemos la primera fluctuacion
des_tip=std(cD1);%Desviacion tipica
thr=coef*des_tip;%Umbral

Cthr=wthresh(C,thr_met,thr);%Eliminar de la transformada los datos que no pasan el umbral

s_den=waverec(Cthr,L,w);%reconstruccion

plot(s,'r')
hold on
plot(s_den,'k')