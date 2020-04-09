function [s,conf] = identiface(A,subj,z)
% Input:
%   A      a library of n identically sized p ×q images as 
%          columns of a single pq×n matrix 
%   subj   an n-vector that records the subject number whose
%          image appears in the corresponding column
%   z      another image in vector form.
%
% Output: 
%   s      the subject number
%   conf   a number between 0 (lowest) and 1 (highest) that 
%          indicates the level of confidence in the identification.




%Solving a linear squares by QR factorization
[Q,R] = qr(A,0);
c = Q'*z;

%Solve an upper triangular linear system, using back sub
n = length(R);
x = zeros(n,1);
for i = n:-1:1
    x(i) = (c(i) - R(i,i+1:n)*x(i+1:n)) / R(i,i);
end


%finding the index of the max value in m
m = x';
maxValue = max(m);

for i = m
    if i == maxValue
        subjIndex = find(m==maxValue);
    end
end


%returns the predicted subject number
s = subj(subjIndex);


%Comparing the predicted index of the number in A to the index
%number in subj
for index = subj
    if index == s
        subjIndex2 = find(subj == s);
    end
end
    
    
%Get the needed column vector from A 
xn = [];
for i = 1:10304
    newB = A(i,subjIndex2);
    xn(end+1) = newB;
end
compareWith = xn';




%Calculate Linear Regression
X = [compareWith];
Y = z;
conf = inv(X'*X)*X'*Y;







