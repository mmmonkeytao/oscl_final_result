% select parameters for magnetic osc

x = 1:1:40000;

for sigma = 0.00006:0.00001:0.00014
  plot(x, exp(-sigma*x)); 
  hold on;
end

sigma = 0.00006:0.00001:0.00014;
lstring = strcat({''}, num2str(sigma(:),'%.5f'));
xlabel('No. of iterations');
ylabel('Exp(-eps*iteration)');
legend(lstring);
title('Exp(- eps * iter) vs iter, formula: select_threshold * (1-exp(-eps*iter))');
