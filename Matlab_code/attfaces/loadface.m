function x = loadface(subject,pose)
% Load in the face for the given subject number (integer) and the given
% pose (integer). 

% returns the corresponding image in column form
filename = ['s',num2str(subject),'/',num2str(pose),'.pgm']; 
X = double( imread(filename) );  % read, convert to double precision
x = X(:);

end

%{
First load a face
    z = loadface(1,1)
Store it as a matrix, A
    A = reshape(z,92,112)
Store it as another matrix, b
    b = reshape(z,92,112)
 
%}