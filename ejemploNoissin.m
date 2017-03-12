close all
clear all
clc

% Ejemplo de Transformada Wavelet Continua

load noissin
c=cwt(noissin,2:2:128,'db4','plot')

%  a plot of the absolute values of
% the continuous wavelet transform coefficients (pagina 63 de Wavelet
% Toolbox for use with Matlab)

% help cwt
%  cwt Real or Complex Continuous 1-D wavelet coefficients.
%     COEFS = cwt(S,SCALES,'wname') computes the continuous
%     wavelet coefficients of the vector S at real, positive
%     SCALES, using wavelet whose name is 'wname'.
%     The signal S is real, the wavelet can be real or complex. 
%  
%     COEFS = cwt(S,SCALES,'wname','plot') computes
%     and, in addition, plots the continuous wavelet
%     transform coefficients.

