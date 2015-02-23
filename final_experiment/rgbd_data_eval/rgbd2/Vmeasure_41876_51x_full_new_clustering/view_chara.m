% plot characteristic curve
mat = load('charaVars-rgbd2_51x_npre_50_c0.0002_th0.0002_sth0.9.dat','-ascii');

typeNames = {'Insertion Time per Fea(s)','Hquery Accuracy','Homogeneity','Completeness','V\_measure','Number of Clusters','Star Center Broken'};

num = size(mat,2);
idx = 1:1:num-1;
idx = idx*200;
size(mat)
idx = [idx 41876];
figure;
size(mat(1,:))
%subplot(3,1,1);
plot(idx, [mat(1,1:end-1)/1000 mat(1,end)/76]);
xlabel('Iterations');
ylabel('Insertion Time(s)');
title(typeNames{1});

figure;
plot(idx, mat(2,:));
hold on;
% xlabel('Iterations');
% ylabel('Hquery Accuracy');
% title(typeNames{2});

%subplot(3,1,2);
plot(idx, mat(3,:));
hold on;
plot(idx, mat(4,:));
hold on;
plot(idx, mat(5,:));
hold on;
plot(idx, mat(6,:)./idx);
hold on;
xlabel('Iterations');
ylabel('%');
legend(typeNames{2:5},'Hqueries%');
title('Hquery Accuracy/Vmeasure/Homogeneity/Completeness/Hqueries');

%subplot(3,1,3)
