function [ output ] = Log_SO3( A )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://www.roboticsproceedings.org/rss11/p06.pdf

theta = acos((trace(A)-1)/2);

if (theta == 0)
    output = zeros(3,1);
    return;
end

output = Angles.unskew(theta*(A-A')/(2*sin(theta)));

end

