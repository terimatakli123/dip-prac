clc;
clear all;
//f=[1 2 4 7]; //Input: A row matrix
//Input ex. f=[1 2 4 7]
N=4;//finding length ofinput sequence
F=zeros(1,N);//cosine transform of input
//C=zeros(N,N);
for k=1:N
for n=1:N
if (k-1)==0
C(k,n)=inv(sqrt(N)); //cosine transform matrix
else
C(k,n)=sqrt(2)*inv(sqrt(N))*cos(%pi*(2*(n-1)+1)*(k-1)/(2*N));
end
disp(C(k,n));
end
end
