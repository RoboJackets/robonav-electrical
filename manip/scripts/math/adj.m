function adjT = adj(base, trans)
%adj - Adjoint transformation
%
% Syntax: adjT = adj(base, trans)
%
% Perform adjoint transformation for trans based on base
   
adjT = base * se2(trans(1:2), trans(3)) / base;
end