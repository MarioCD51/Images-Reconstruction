rng = 255;
sz = 720;

A = randi([0, rng], sz, 'uint8');
B = randi([0, rng], sz, 'uint8');

Sum = A + B;
Res = A - B;
Mul = A.*B;
Div = A./B;

Sum(Sum>rng) = rng;
Res(Res>rng) = rng;
Mul(Mul>rng) = rng;
Div(Div>rng) = rng;

subplot (231), imagesc(A), title('Matriz A')
colormap(gray), colorbar

subplot (234), imagesc(B), title('Matriz B')
colormap(gray), colorbar

subplot (232), imagesc(Sum), title('Matriz A + B')
colormap(gray), colorbar

subplot (235), imagesc(Res),  title('Matriz A - B')
colormap(gray), colorbar

subplot (233), imagesc(Mul), title('Matriz A*B')
colormap(gray), colorbar

subplot (236), imagesc(Div), title('Matriz A/B')
colormap(gray), colorbar

% % % % % % % % %

