function [R] = Quaternion_to_Rotation(q)
% Converts a quaternion to a rotation matrix
% http://mars.cs.umn.edu/tr/reports/Trawny05b.pdf
%
% Author:   Ross Hartley
% Date:     11/09/2017

qv = q(1:3); qw = q(4);
R = (2*qw^2-1)*eye(3) - 2*qw*Angles.skew(qv) + 2*(qv*qv');

end

