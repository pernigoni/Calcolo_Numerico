clf
global r
% si provino diversi valori di r e a 
% per capire sia il tipo di evoluzione che le differenze tra eulero e RK

% r = 0.1; a = 0.5;
r = 0.01; a = 0.5;
% r = 0.005; a = 0.5;
[t, u] = eulero(@SIR, [0, 10], [199, 1, 0], 0.1);
plot(t, u(:, 1));
hold on
plot(t, u(:, 2));
plot(t, u(:, 3));
title(['Modello SIR con r = ', num2str(r)])
legend('S', 'I', 'R')

% scommentare per vedere il comportamento del metodo di Runge-Kutta (RK)
figure
[tt, uu] = ode45(@SIR, [0, 10], [199, 1, 0]);
plot(tt, uu(:, 1));
hold on
plot(tt, uu(:, 2));
plot(tt, uu(:, 3));
title(['Modello SIR RK con r = ', num2str(r)])
legend('S', 'I', 'R')