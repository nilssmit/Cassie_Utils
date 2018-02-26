function [ output ] = Exp_SE3( vec )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://ethaneade.com/lie.pdf

w = vec(1:3);
u = vec(4:6);
output = [Angles.Exp_SO3(w), Angles.RightJacobian_SO3(-w)*u; zeros(1,3), 1];

end

