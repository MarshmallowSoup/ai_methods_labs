function hardlimfile
    % Функція hardlim
    name = 'Hard Limit';
    inrange = '(-Inf, Inf)';
    outrange = '{0, 1}';

    % Графіки функції активації та її похідної
    n = -5:0.1:5;
    a = hardlim(n);
    da = dhardlim(n);
    figure;
    plot(n, a, 'r');
    hold on;
    plot(n, da, 'c');
    title('Графіки Hard Limit та його похідної');
    xlabel('n');
    ylabel('Значення');
    legend('Hard Limit', 'Похідна Hard Limit', 'Location', 'Best');
    grid on;

    % Розрахунок векторів виходу та похідної для заданого входу
    N = [-0.7; 0.1; 0.8];
    A = hardlim(N);
    dA_dN = dhardlim(N, A);

    % Вивід результатів
    disp('Вектор входу (N):');
    disp(N');
    disp('Вектор виходу (A):');
    disp(A');
    disp('Вектор похідної (dA_dN):');
    disp(dA_dN');
end

function result = hardlim(n)
    result = n >= 0;
end

function result = dhardlim(n, a)
    result = zeros(size(n));
    result(n >= 0) = 0;
end