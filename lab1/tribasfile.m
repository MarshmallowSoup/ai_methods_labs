function tribasfile
    % Функція tribas
    name = 'Triangular basis';
    inrange = '(-Inf, Inf)';
    outrange = '{0, 1-abs(n), 0} for n in (-Inf, -1), (-1, 1), (1, Inf) respectively';

    % Графіки функції активації та її похідної
    n = -5:0.1:5;
    a = tribas(n);
    da = dtribas(n);
    figure;
    plot(n, a, 'r');
    hold on;
    plot(n, da, 'c');
    title('Графіки Triangular basis та його похідної');
    xlabel('n');
    ylabel('Значення');
    legend('Triangular basis', 'Похідна Triangular basis', 'Location', 'Best');
    grid on;

    % Розрахунок векторів виходу та похідної для заданого входу
    N = [-2; -0.5; 0; 0.5; 2];
    A = tribas(N);
    dA_dN = dtribas(N);

    % Вивід результатів
    disp('Вектор входу (N):');
    disp(N');
    disp('Вектор виходу (A):');
    disp(A');
    disp('Вектор похідної (dA_dN):');
    disp(dA_dN');

end

function result = tribas(n)
    result = max(0, 1 - abs(n));
    result(n < -1) = 0;
    result(n > 1) = 0;
end

function result = dtribas(n)
    result = zeros(size(n));
    result(n >= -1 & n <= 0) = 1;
    result(n > 0 & n <= 1) = -1;
end