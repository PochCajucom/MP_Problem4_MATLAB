%Problem 4 
H = input('initial height in m: ');
V = input('magnitude of the velocity (m/s): ');
angle = input('angle of firing in degrees with respect to x axis: ');
Ax = input('X-Component of the Acceleration, considering the sign (m/s^2): ');
Ay = input('Y-Component of the Acceleration, considering the sign (m/s^2): ');
if Ay == 0
    error("no free fall please satisfy the condition")
elseif H < 0
    error("no height please satisfy the condition ")
end
pathoftraj=(-V*sind(angle)+sqrt((V*sind(angle))^2-2*Ay*H))/Ay;
if pathoftraj <=0 || pathoftraj<(-V*math.sin(angle)/Ay)
    pathoftraj=(-V*sind(angle)-sqrt((V*sind(angle))^2-2*Ay*H))/Ay;
end
traj = 0:0.001:pathoftraj;
Ycomponent = H+V.*sind(angle).*traj+(1./2).*Ay.*traj.^2;
Xcomponent = V.*cosd(angle).*traj+(1./2).*Ax.*traj.^2;
plot(Xcomponent,Ycomponent,'r-')
grid on
axis tight
title 'Path of the Projectile'
xlabel 'X-Trajectory';
ylabel 'Y-Trajectory'; 
legend('Trajectory')