num_class = 6;

addpath('rotateXlabels/');
mat = load('sim_kitti_histogram.dat','-ascii');
%distr = load('distr.dat', '-ascii');

diagonal = diag(mat);

for i = 1:1:num_class
    scatter(1:num_class, 1.0./mat(i,:));
    hold on;
end

LABELS =  { 'Cars', 'Vans','Trucks','Pedestrians', 'Cyclists','Trams'};

plot(1:1:num_class, 1.0./diagonal, '-rs','LineWidth',2,'MarkerEdgeColor','b');
hold on;
%scatter(1:1:51, distr, 'k');
xlim([0 7]);
title('clusters similarity between each other');
xlabel('number of clusters');
ylabel('similarity');

set(gca,'XTick',1:num_class);
set( gca(), 'XTickLabel', LABELS )
rotateXLabels( gca(), 45 )

