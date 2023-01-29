function [t, u] = eulero(odefun, intervallo, init, h) 
% le funzioni devono avere lo stesso nome del file
% odefun sta per ordinary differential equation
% ritorna [t, u]

    t = intervallo(1) : h : intervallo(end); % discretizzazione del tempo
	N = length(t); % numero di punti sulla griglia
	m = length(init); % numero di equazioni in odefun
    
	u = zeros(N, m); % matrice di N righe e m colonne
	u(1, :) = init;
	for i = 2 : N
		ff = odefun(t(i - 1), u(i - 1, :));
		u(i, :) = u(i - 1, :) + h * ff';
	end
end