
x1 = 0:80;
y1 = 1*x1;

xa = 80:100;
ya = 220*ones(size(xa));

xb = 100:250;
yb = 1*xb;

x = [x1 xa xb];
y = [y1 ya yb];

figure(3);
plot(x,y, 'linewidth', 1);