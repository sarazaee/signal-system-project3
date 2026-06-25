N = 3000;                
noise = randn(1, N);      

figure;
histogram(noise, 30, 'Normalization', 'pdf');
hold on;
x = linspace(-4, 4, 200);
plot(x, normpdf(x, 0, 1), 'r', 'LineWidth', 2);
title('Histogram of randn(1,3000) vs. Standard Normal PDF');
xlabel('Value'); ylabel('Probability density');
legend('Sample histogram', 'Theoretical PDF');
grid on;


fprintf('Mean of noise = %f (should be close to 0)\n', mean(noise));


fprintf('Variance of noise = %f (should be close to 1)\n', var(noise));