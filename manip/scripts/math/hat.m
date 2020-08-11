function mat = hat(vec)
% hat - Hat operator
%
% Syntax: mat = hat(vec)
%
% Change vector into matrix via hat operator

mat = [0, -vec(3), vec(2);...
       vec(3), 0, -vec(1);...
       -vec(2), vec(1), 0];
end
