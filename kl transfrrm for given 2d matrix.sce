clear ;
clc ;
X = [4 ,3 ,5 ,6;4 ,2 ,7 ,7;5 ,5 ,6 ,7];
//X=[4 -2; -1 3];
[m , n ]= size (X) ;
A = [0];
E = [0];
for i =1: n
A= A + X (: , i ) ;
E= E + X (: , i ) * X (: , i)';
end
mx = A / n ; //mean ma t ri x
E = E / n;
C = E - mx * mx '; // c o v a r i a n c e ma t ri x C = E[ xx ’] −mx∗mx’
[V , D ] = spec ( C ) ; // e i g e n v a l u e s and e i g e n v e c t o r s
d = diag ( D ) ; // d i a g o n a l e l e m e n t s od e i g e n v a l u e s
disp(d)
[d , i ] = gsort ( d ) ; // s o r t i n g t h e e l e m e n t s of D i n d e s c e n d i n g o r d e r
for j = 1: length (d )
T (: , j )= V (: , i ( j ) ) ;
end
T = T'
disp (d , ' Eig e n Val u e s a r e U = ' )
disp (T , ' The e i g e n v e c t o r ma t ri x T = ' )
disp (T , ' The KL t r a nf o rm b a s i s i s = ' )
//KL t r a n sf o r m
for i = 1: n
Y (: , i )= T * X (: , i ) ;
end
disp (Y , 'KL t r a n s f o r m a t i o n of t h e i n p u t ma t ri x Y = ' )
// R e c o n s t r u c t i o n
for i = 1: n
x (: , i )= T'* Y (: , i ) ;
end
disp (x , ' R e c o n s t r u c t ma t ri x of t h e g i v e n sam pl e ma t ri x X = ' )
