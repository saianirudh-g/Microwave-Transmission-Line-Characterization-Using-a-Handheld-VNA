% Frequency (Hz)
f_GHz = [1 2 3 4 5] * 1e9;

% Cable length (meters)
l = 0.20;

% S11 Values
S11_dB = [-32 -32.65 -29.68 -20.90 -8.63];
S11_phase_deg = [-66.1 -108.74 157.05 155.34 65.99];

% Convert S11 to complex
S11_mag = 10.^(S11_dB/20);
S11_phase = deg2rad(S11_phase_deg);
S11 = S11_mag .* exp(1j * S11_phase);

% S21 Values
S21_dB = [2.96 3.26 1.63 3.88 1.09];
S21_phase_deg = [-52.32 -95.59 -120.71 175.78 134.32];

% Convert S21 to complex
S21_mag = 10.^(S21_dB/20);
S21_phase = deg2rad(S21_phase_deg);
S21 = S21_mag .* exp(1j * S21_phase);

% Calculate Q
Q = (S11.^2 + S21.^2 + 1) ./ (2 * S11);

% Compute Gamma
Gamma1 = Q + sqrt(Q.^2 - 1);
Gamma2 = Q - sqrt(Q.^2 - 1);
Gamma = Gamma1;
Gamma(abs(Gamma1) > 1) = Gamma2(abs(Gamma1) > 1);

% Compute X
X = ((S11 + S21) - Gamma) ./ (1 - (S11 + S21));

% Compute alpha and beta
alpha = -log(abs(X)) ./ l;
beta = -angle(X) ./ l;

% Plotting
subplot(1,2,1);
plot(f_GHz, alpha, 'LineWidth', 2);
xlabel('Frequency (GHz)'); ylabel('\alpha (Np/m)');
title('Attenuation Constant \alpha vs Frequency'); grid on;

subplot(1,2,2);
plot(f_GHz, beta, 'LineWidth', 2);
xlabel('Frequency (GHz)'); ylabel('\beta (rad/m)');
title('Phase Constant \beta vs Frequency'); grid on;
