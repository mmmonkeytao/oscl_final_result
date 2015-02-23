% print distribution data
addpath('rotateXlabels/');

num_class = 6;

mat = load('label.dat');
sz = size(mat, 2);

label = [];
for i = 0:5
   label(i+1) = sum(mat == i); 
end

distr = label/sz;

LABELS =  { 'Cars', 'Vans','Trucks','Pedestrians', 'Cyclists','Trams'};

label = [0 1 2 3 4 5];

bar(label, distr);
xlabel('Labels');
xlim([-1 6]);
ylabel('Category Distribution');
title(['Distribution of kitti-2011-09-26-0014-velodyne-points  ' num2str(sz)]);

set(gca,'XTick',0:5);
set( gca(), 'XTickLabel', LABELS )
rotateXLabels( gca(), 45 )