function [R] = Quaternion_to_Rotation(q)
% Converts a quaternion to a rotation matrix
% https://en.wikipedia.org/wiki/Conversion_between_quaternions_and_Euler_angles
qw = q(1); qx = q(2); qy = q(3); qz = q(4);
R = [qw^2+qx^2-qy^2-qz^2,     2*(qx*qy-qw*qz),      2*(qw*qy+qx*qz);
         2*(qx*qy+qw*qz), qw^2-qx^2+qy^2-qz^2,      2*(qy*qz-qw*qx);
         2*(qx*qz-qw*qy),     2*(qw*qx+qy*qz), qw^2-qx^2-qy^2+qz^2];

end

