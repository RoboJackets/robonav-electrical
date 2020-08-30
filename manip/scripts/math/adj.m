function adjT = adj(base, trans)
%adj - Adjoint transformation
%
% Syntax: adjT = adj(base, trans)
%
% Perform adjoint transformation for trans based on base
   
adjT = base * trans / base;

end