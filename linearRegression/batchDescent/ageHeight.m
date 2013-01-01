clear;
close all;
load ../../trainingData/ex2x.dat
load ../../trainingData/ex2y.dat


m = length(ex2y); % store the number of training examples
n = size(ex2x,2); % number of feature
x = [ ones(m,1), ex2x ];
y =  ex2y * ones (1,n);


theta_vec = [0 0]';
alpha = 0.07;
err = [0 0]';
for kk = 1:1500
        h_theta = (x*theta_vec);
        h_theta_v = h_theta*ones(1,n);
        y_v = y*ones(1,n);
        theta_vec = theta_vec - alpha*1/m*sum((h_theta_v - y_v).*x).';
        err(:,kk) = 1/m*sum((h_theta_v - y_v).*x).';
end

err(:,kk)
figure
plot(x(:,2),y,'o');
hold on
plot(x(:,2),x*theta_vec,'rp-');
legend('measured', 'predicted');
grid on
xlabel('Age, x');
ylabel('Height, y');
title('Measured and predicted Height');
pause()
