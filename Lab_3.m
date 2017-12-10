x = [ 0 0 0 0 0 0 1.5 1.5 1.5 1.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]';
y = [ 0 0 0 0 0 0 0 0 0 0 2 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0]';
q = zeros(26)';
z = [x, y, q];

figure
for i = 1:10
subplot (10,1,i)
stem(z)
x=x';
x = [x(end),x(1:25)];
x=x';
q = x.*y;
z = [x, y, q];
end

j = 0;
for i = 1:100
    j = i+j;
end
j
