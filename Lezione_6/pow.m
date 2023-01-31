function p = pow(x, n)
    p = 1;
    for k = 1 : n
        p = p * x;
    end
end