clc, clear all, close all %limpa a janela de comando

nEpocas = 0; %Número de iteraçoes
eta = 0.01; %Taxa de aprendizagem
err = 0; %Valor inicial do erro

data = xlsread('Apendice2.xls','Plan1');

x0 = -1*ones(length(data),1);
x1 = data(:,1); %vetores dos dados no excel
x2 = data(:,2);
x3 = data(:,3);


x = [x0 x1 x2 x3]; %matriz das entradas
% fprintf('Entradas:')
% disp(x)

[padroes,entradas] = size(x); %Retorna o número de dados, 30 e o número de entradas, 4

  
w = [-3.166 1.5995 2.5308 -0.7511]; %Retorna valores aleatórios para w,o peso inicial, com 4 colunas e 1 linha
wi = w;
% fprintf('Peso inicial:')
% disp(wi)
final = 0;

while (final <= 0)
    final=1;
    for i = 1:padroes
        u = w*x(i,:)';
         fprintf('Valor de i:')
         disp(i)
         fprintf('Valor de x:')
         disp(x(i,:))
        y = sign(u); %função degrau, se u<0, y=-1,se u>0, y=1
        fprintf('Valor de y:')
        disp(y)
    end
    nEpocas = nEpocas+1;
end

% fprintf('Pesos finais:')
% disp(w)
% 
% fprintf('Número de épocas (iterações):')
% disp(nEpocas)


   