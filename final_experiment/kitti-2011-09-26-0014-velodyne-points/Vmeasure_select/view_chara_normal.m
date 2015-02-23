% plot characteristic curve
mat = load('charaVars_kitti_normal_osc_threshold8e-3.dat','-ascii');
mat = mat(:,1:52);

typeNames = {'Insertion Time per Fea(s)','Hquery Accuracy','Homogeneity','Completeness','V\_measure','Number of Clusters','Star Center Broken'};

num = size(mat,2);
idx = 1:1:num-1;
idx = idx*50;
idx = [idx 2596];

figure;
%subplot(3,1,1);
plot(idx, mat(1,:)/1000);
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
title('Hquery Accuracy/Homogeneity/Completeness/Vmeasure/Hqueries');

figure;
plot(idx, mat(7,:));
xlabel('Iterations');
ylabel('Number');
legend(typeNames{7});
title('Star Center Broken');

%subplot(3,1,3)
