clear;

% Define the sigmoid function
g = inline('1.0 ./ (1.0 + exp(-z))'); 

x = [ 1 1 ];
theta =  [ 10 -20 ]';

not = g(x * theta)

x = [ 1 0 1 ];
theta = [-10 20 20 ]';
or = g(x * theta)

x = [ 1 1 1 ];
theta = [-30 20 20 ]';
and = g(x * theta)


