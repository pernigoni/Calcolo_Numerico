% funzione che passerò a eulero come odefun
function yp = SIR(~, y) % ~ al posto di t altrimenti dà un warning 
    global r; % in MatLab le variabili sono di default locali
    global a;
    % y = [S, I, R]
    % yp = [S', I', R']
    yp = zeros(3, 1);
    yp(1) = -r * y(1) * y(2);           % S'(t)= -r * S(t) * I(t)
    yp(2) = r * y(1) * y(2) - a * y(2); % I'(t) = r* S(t) * I(t) - a * I(t)
    yp(3) = a * y(2);                   % R'(t) = a * I(t);
end