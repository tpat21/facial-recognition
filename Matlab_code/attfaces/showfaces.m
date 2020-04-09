function showfaces(X)
%takes a matrix of image vectors and displays them in a grid.
n = size(X,2);
 if n > 16, error('A maximum of 16 faces please!'), end
rows = floor(n/4);

for j = 1:n
  subplot(rows,ceil(n/rows),j)
  imshow(reshape(X(:,j),[112 92]),[0 255])
end
%colormap(gray(256))
