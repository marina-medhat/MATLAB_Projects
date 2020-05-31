clear
clc
figure('Name','Traffic Light')
rectangle('Position',[20 15 10 30],'FaceColor','black','Curvature',0.2)
rectangle('Position',[24 5 2 10.1],'FaceColor',[0.5 0.5 0.5],'Curvature',0.2)
p=patch([24 26 26 24],[10 11 12 11],'yellow')
p=patch([24 26 26 24],[6 7 8 7],'yellow')
axis equal
hold on
for i=1:50
rectangle('Position',[23 35 4 8],'Curvature',[1 1],'FaceColor','red')
rectangle('Position',[23 25 4 8],'Curvature',[1 1],'FaceColor',[0.5 0.4 0])
rectangle('Position',[23 15 4 8],'Curvature',[1 1],'FaceColor',[0 0.2 0])
drawnow
pause(2)
rectangle('Position',[23 35 4 8],'Curvature',[1 1],'FaceColor',[0.3 0 0])
rectangle('Position',[23 25 4 8],'Curvature',[1 1],'FaceColor','yellow')
rectangle('Position',[23 15 4 8],'Curvature',[1 1],'FaceColor',[0 0.2 0])
drawnow
pause(2)
rectangle('Position',[23 35 4 8],'Curvature',[1 1],'FaceColor',[0.3 0 0])
rectangle('Position',[23 25 4 8],'Curvature',[1 1],'FaceColor',[0.5 0.4 0])
rectangle('Position',[23 15 4 8],'Curvature',[1 1],'FaceColor','green')
drawnow
pause(2)
end