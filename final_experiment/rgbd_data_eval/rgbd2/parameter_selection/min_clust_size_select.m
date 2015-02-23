% select parameters for magnetic osc

x = 1:1:40000;

for sigma = 0.0001:0.00005:0.0008
  plot(x, 51*ceil(100 * (1 - exp(-sigma * x)))); 
  hold on;
end

sigma = 0.0001:0.00005:0.0008;
lstring = strcat({''}, num2str(sigma(:),'%.5f'));
xlabel('No. of iterations');
ylabel('51*ceil(100 * (1 - exp(-sigma * x)))');
legend(lstring);
title('51*ceil(100 * (1 - exp(-sigma * x))) vs iter');