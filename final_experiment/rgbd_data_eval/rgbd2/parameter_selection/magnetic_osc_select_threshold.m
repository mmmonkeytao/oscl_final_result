% select parameters for magnetic osc

x = 1:1:40000;

for sigma = 0.0001:0.00005:0.0005
  plot(x, 0.99*(1-exp(-sigma*x))); 
  hold on;
end

sigma = 0.0001:0.00005:0.0005;
lstring = strcat({''}, num2str(sigma(:),'%.5f'));
xlabel('No. of iterations');
ylabel('0.99*(1.0-Exp(- eps * iter))');
legend(lstring);
title('0.99*(1.0-Exp(- eps * iter)) vs iter');
