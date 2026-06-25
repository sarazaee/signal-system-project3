msg = 'signal';  
rate = 1; 
sig = coding_amp(msg, rate);
figure(1);

plot(0:1/100:(length(sig)-1)/100, sig);

figure(2);
msg = 'signal';  
rate = 2; 
sig = coding_amp(msg, rate);
plot(0:1/100:(length(sig)-1)/100, sig);

figure(3);
msg = 'signal';  
rate = 3; 
sig = coding_amp(msg, rate);
plot(0:1/100:(length(sig)-1)/100, sig);
