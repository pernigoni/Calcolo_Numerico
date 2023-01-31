% calcola un'approssimazione di exp(x) come
% la serie di taylor troncata al termine k-esimo
function e = myexp(x, k)
    e = 1;
    for i = 1 : k
       e = e + pow(x, i) / fact(i); % O(k^2)
    end
end
% andrebbe riscritta in modo che sia lineare e che si possa rappresentare
% myexp(-20, 500), vedere testo esercitazione