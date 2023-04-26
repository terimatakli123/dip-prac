clc ;
f = [1 ,1 ,1 ,1;1 ,1 ,1 ,1;1 ,1 ,1 ,1;1 ,1 ,1 ,1];
t = fft2(f);
disp(t, "2D DFT of given 2D image = ");
