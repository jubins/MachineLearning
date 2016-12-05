%Question1:
%B(i)
clear;
matrix10 = rand(500,10);
vector10 = sum(matrix10 >= 0.2 & matrix10 <= 0.6)/500;
fprintf('Values in Vector10: ')
fprintf('%f, ',vector10);
bar(vector10,'b');
axis([0 11 0 1]);
xlabel('Column Number');
ylabel('Percentage: %');
legend('Result Bar');
title('0.2 <= Value <= 0.6');

%Question1:
%B(ii)
count = 1;
for i=1:10
    if vector10(i)<=0.41 && vector10(i)>=0.39
        count = count+1;
    end
end

fprintf('\nFraction for %d experiments = %.0f percent',i,((count/10)*100));

%Question1:
%B(iii)
fprintf('\nMean for %d experiments = %f',i,mean(vector10)); %Mean
fprintf('\nVariance for %d experiments = %f\n',i,var(vector10)); %Variance


%Question1:
%B(iv)
%For 100 Experiments
matrix100 = rand(500,100);
vector100 = sum(matrix100 >= 0.2 & matrix100 <= 0.6)/500;
%fprintf('%f, ',vector100);
count=1;
for i=1:100
    if vector100(i)<=0.41 && vector100(i)>=0.39
        count = count+1;
    end
end
fprintf('\nFraction for %d experiments = %.0f percent',i,((count/100)*100));
fprintf('\nMean for %d experiments = %f',i,mean(vector100)); %Mean
fprintf('\nVariance for %d experiments = %f\n',i,var(vector100)); %Variance

%For 1000 Experiments
matrix1000 = rand(500,1000);
vector1000 = sum(matrix1000 >= 0.2 & matrix1000 <= 0.6)/500;
%fprintf('%f, ',vector1000);
count=1;
for i=1:1000
    if vector1000(i)<=0.41 && vector1000(i)>=0.39
        count = count+1;
    end
end
fprintf('\nFraction for %d experiments =  %.0f percent',i,((count/1000)*100));
fprintf('\nMean for %d experiments = %f',i,mean(vector1000)); %Mean
fprintf('\nVariance for %d experiments = %f\n',i,var(vector1000)); %Variance