function f = DF(A)
 if (size(A,3)==3)
  A=rgb2gray(A);
 end 
A=edge(A,'canny');
%imshow(A);
[xk1 yk1] = find(A > 0);
sk1 = xk1 + i*yk1;
N=length(sk1);
for u=1:8
f(u)=0;
for k=1:N
f(u)=f(u)+sk1(k)*exp(-2*i*pi*u*(k-1)/N);
end
end
f=f/f(2);
f=abs(f); 
end