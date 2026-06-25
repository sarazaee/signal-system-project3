% bit rate = 1
x = coding_amp('signal', 1);
noise = 0.01 * randn(1, length(x));
y = decoding_amp(x + noise, 1);

% bit rate = 2
x = coding_amp('signal', 2);
noise = 0.01 * randn(1, length(x));
y = decoding_amp(x + noise, 2);

% bit rate = 3
x = coding_amp('signal', 3);
noise = 0.01 * randn(1, length(x));
y = decoding_amp(x + noise, 3);