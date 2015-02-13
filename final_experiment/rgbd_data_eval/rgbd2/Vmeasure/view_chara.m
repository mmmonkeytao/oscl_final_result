% plot characteristic curve
mat = load('charaVars.dat','-ascii');

typeNames = {'Insertion Time per Fea(s)','Homogeneity','Completeness','V_measure','Number of Clusters'};

num = size(mat,2);
idx = 1:1:num;
idx = idx*200;

figure;

subplot(3,1,1);
plot(idx, mat(1,:)/1000);
xlabel('iterations');
ylabel('Insertion Time(s)');
title(typeNames{1});

subplot(3,1,2);
plot(idx, mat(2,:));
hold on;
plot(idx, mat(3,:));
hold on;
plot(idx, mat(4,:));
hold on;
xlabel('iterations');
ylabel('%');
legend(typeNames{2:4});

subplot(3,1,3)
plot(idx, mat(5,:));
hold on;
xlabel('iterations');
ylabel('No. clusters');
legend(typeNames{5});