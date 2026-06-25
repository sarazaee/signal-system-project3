function msg = decoding_amp(coded_signal, rate)

chars = ['a':'z', ' ', '.', ',', '!', '?', ';'];  
fs = 100;
t_ref = 0:1/fs:1-1/fs;            
signal_ref = 2*sin(2*pi*t_ref);

num_symbols = length(coded_signal) / fs;  
corrs = zeros(1, num_symbols);


for i = 1:num_symbols
    idx_start = fs*(i-1) + 1;
    idx_end   = fs*i;
    packet = coded_signal(idx_start:idx_end);
    corrs(i) = 0.01 * sum(packet .* signal_ref); 
end

vals = round(corrs * (2^rate - 1)); 
vals = max(0, min(vals, 2^rate - 1)); 


binary_str = '';
for i = 1:num_symbols
    binary_str = [binary_str, dec2bin(vals(i), rate)];
end


msg = '';
for i = 1:5:length(binary_str)
    if i+4 > length(binary_str)
        break;
    end
    chunk = binary_str(i:i+4);
    dec_val = bin2dec(chunk);
    msg = [msg, chars(dec_val + 1)];
end
end