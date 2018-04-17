function [ output ] = Exp_SEN3( vec )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://ethaneade.com/lie.pdf

w = vec(1:3);
u = reshape(vec(4:end),3,[]);
output = eye(3 + size(u,2));
output(1:3,1:3) = Angles.Exp_SO3(w);
output(1:3,4:end) = Angles.RightJacobian_SO3(-w)*u;

end

