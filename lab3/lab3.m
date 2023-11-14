% Крок 1: Створити нейронну мережу
net8 = newff([0 5], [2 1], {'tansig', 'logsig'}, 'traingd');

% Крок 2: Ініціалізувати ваги і зміщення за допомогою алгоритму Нгуєна-Відроу
net8.initFcn = 'initlay';
net8.layers{1}.initFcn = 'initnw';
net8.layers{2}.initFcn = 'initnw';

% Крок 3: Встановити навчальні дані
P = [0 1 2 3 4 5];
T = [0 0 0 1 1 1];

% Крок 4: Вивести параметри навчання
info = traingd('pdefaults');

% Крок 5: Налаштувати параметри навчання та навчити мережу
net8.trainParam.epochs = 500;
net8.trainParam.lr = 0.01;
[net8, TR] = train(net8, P, T);

% Крок 6: Провести моделювання мережі і оцінити якість навчання
Ynet8 = sim(net8, P);

% Вивести результати
disp('Цільові значення:');
disp(T);
disp('Вихід мережі:');
disp(Ynet8);
