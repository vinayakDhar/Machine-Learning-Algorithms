clear;
close all;
x = [1:50].';
y = [4554 3014 2171 1891 1593 1532 1416 1326 1297 1266 ...
  1248 1052 951 936 918 797 743 665 662 652 ...
  629 609 596 590 582 547 486 471 462 435 ...
  424 403 400 386 386 384 384 383 370 365 ...
  360 358 354 347 320 319 318 311 307 290 ].';

m = length(y); % store the number of training examples
x = [ ones(m,1) x]; % Add a column of ones to x
n = size(x,2); % number of features
theta_vec = [0 0]';
alpha = 0.002;
err = [0 0]';
for kk = 1:10000
        h_theta = (x*theta_vec);
        h_theta_v = h_theta*ones(1,n);
        y_v = y*ones(1,n);
        theta_vec = theta_vec - alpha*1/m*sum((h_theta_v - y_v).*x).';
        err(:,kk) = 1/m*sum((h_theta_v - y_v).*x).';
end

figure
plot(x(:,2),y,'bs-');
hold on
plot(x(:,2),x*theta_vec,'rp-');
legend('measured', 'predicted');
grid on
xlabel('Page index, x');
ylabel('Page views, y');
title('Measured and predicted page views');
pause()
