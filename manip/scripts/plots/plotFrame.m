function plotFrame(mat, label, color)
% plotFrame - Plots a frame
%
% Syntax: plotFrame(mat)
%
% Plots a coordinate frame based on its transformation from the base
% frame

    if ( (nargin < 2) )
        label = '';
    end

    if ( (nargin < 3) || isempty(color) )
        color = 'b';
    end
  
    hold on;
    dot = mat(1:2, 3);
    
    frame = mat(1:2, 1:2) * 2 * eye(2);
    plot(dot(1) + [0 frame(1, 1)], dot(2) + [0 frame(2, 1)], color);
    hold on;
    plot(dot(1) + [0 frame(1, 2)], dot(2) + [0 frame(2, 2)], color);
    plot(dot(1), dot(2), 'o', 'MarkerSize', 7);
    if ~isempty(label)
        disp('Plotting Label')
        text(dot(1) - (frame(1,1) + frame(2,1)) / 6, ...
             dot(2) - (frame(1,2) + frame(2,2)) / 6, label);
    end
    hold off;
    axis equal;
end