% select parameters for magnetic osc

x = 1:1:4000;

for sigma = 0.001:0.001:0.008
  plot(x, exp(-sigma*x)); 
  hold on;
end

xlabel('No. of iterations');
ylabel('Exp(-eps*iteration)');
legend('0.001','0.002','0.003','0.004','0.005','0.006','0.007','0.008');
title('Exp(- eps * iter) vs iter, formula: select_threshold * (1-exp(-eps*iter))');
