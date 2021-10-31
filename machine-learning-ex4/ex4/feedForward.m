function [A1,A2,A3,Z2,Z3] = feedForward(X, Theta1, Theta2, m)
  
  
  A1 = [ones(m, 1) X];

  Z2 = Theta1*A1';
  A2 = sigmoid(Z2);
  
  A2 = [ones(1,columns(A2)); A2];
  Z3 = Theta2*A2;

  A3 = sigmoid(Z3);
end