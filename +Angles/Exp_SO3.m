function [ output ] = Exp_SO3( w )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://ethaneade.com/lie.pdf

A = Angles.skew(w);
theta = norm(w);

if theta == 0
    output = eye(3);
else
    output = eye(3) + (sin(theta)/theta)*A + ((1-cos(theta))/(theta^2))*A^2;
end

end

