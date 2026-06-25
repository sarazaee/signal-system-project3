function coded_signal = coding_amp(msg, rate)
fs = 100;
t_symbol = (0:1/fs:1-1/fs);
chars = ['a':'z', ' ', '.', ',', '!', '?', ';'];
binary_str = '';

for k = 1:length(msg)
    ch = msg(k);
    idx = find(chars == ch, 1);
    if isempty(idx)
        error('there is no character like this!');
    end
    binary_str = [binary_str, dec2bin(idx-1, 5)];
end

num_symbols = length(binary_str) / rate;
coded_signal = [];

for i = 1:num_symbols
    block = binary_str((i-1)*rate + 1 : i*rate);
    val = bin2dec(block);
    A = val / (2^rate - 1);
    if A == 0
        seg = zeros(1, fs);
    else
        seg = A * sin(2 * pi * t_symbol);
    end   
    coded_signal = [coded_signal, seg];
end
end