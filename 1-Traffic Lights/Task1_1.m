%Yello[1 1 0]
%Red[1 0 0]
%Green[0 1 0]

%/******* Drawing the rrectangle ********/
x_rect = [-2  2 2 -2 -2 ];
y_rect = [-2 -2 8  8  -2];
fill(x_rect , y_rect , [0 0 0]);


%/******* Drawing the Circles ********/
theta = 0: 1 : 360;
%%RED
ry = 1;
xy = ry * cosd(theta);
yy = ry * sind(theta);
%fill(xy,yy,[1 0 0]); 

%axis([-10 10 -10 10]);
%%Green

rg = 1;
xg = rg * cosd(theta);
yg = (rg * sind(theta))+3;
%fill(xg,yg,[0 1 0]);
%axis([-10 10 -10 10]);
%%Yello

rr = 1;
xr = rr * cosd(theta);
yr = (rr * sind(theta))+6;
%fill(xr,yr,[1 1 0]);
axis([-10 10 -10 10]);

%/*********** Drawing The small Rectangle ***************/
small_rectx = [-0.5 0.5 0.5 -0.5 -0.5];
small_recty = [-2   -2  -6  -6   -2];
hold on;
fill(small_rectx , small_recty ,[0 0 0] );

%/*********** Drawing The small dashes ***************/

x = -0.5 : 0.01 : 0.5;
y1 = x -3;
y2 = x -4;

plot(x,y1);
hold on;
plot(x,y2);
%fill(x,y,[1 1 0]);

for ss = 1 : 3
    axis([-10 10 -10 10]);
    fill(xy,yy,[1 0 0]); 
    fill(xr,yr,[0.2 0.2 0.2]);
    fill(xg,yg,[0.2 0.2 0.2]);
    pause(1);
    fill(xy,yy,[0.2 0.2 0.2]); 
    fill(xg,yg,[0 1 0]);
    fill(xr,yr,[0.2 0.2 0.2]);
    pause(1);
    fill(xy,yy,[0.2 0.2 0.2]); 
    fill(xg,yg,[0.2 0.2 0.2]);
    fill(xr,yr,[1 1 0]);
    pause(1); 
end    
