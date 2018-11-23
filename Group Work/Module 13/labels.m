function [lbl] = labels(nx,nu,ny,xNames,xUnits,uUnits,yUnits)
%LABELS Summary of this function goes here
%   Detailed explanation goes here

lbl.time = 'Time $[s]$';

% Prep labels for inputs
lbl.u = cell(1,nu);
lbl.u_vec = '$\mathbf{u}(t)$';
if ~isempty(uUnits)
    lbl.uU = cell(1,nu);
    lbl.uUnits = cell(1,nu);
end
% Set labels
for i = 1:nu
    lbl.u{i} = ['$u_' num2str(i) '(t)$'];
    if ~isempty(uUnits)
        lbl.uUnits{i} = [' $[' uUnits{i} ']$'];
        lbl.uU{i} = [lbl.u{i} lbl.uUnits{i}];
    end
end

% Prep labels for states
lbl.x =  cell(1,nx);
lbl.xh = cell(1,nx);
lbl.x_vec = '$\mathbf{x}(t)$';
lbl.xh_vec = '$\mathbf{\hat{x}}(t)$';

if ~isempty(xNames)
    lbl.xN = cell(1,nx);
end
if ~isempty(xUnits)
    lbl.xU = cell(1,nx);
    lbl.xhU = cell(1,nx);
    lbl.xUnits = cell(1,nx);
end
% Set labels
for i = 1:nx
    lbl.x{i} = ['$x_' num2str(i) '(t)$'];
    lbl.xh{i} = ['$\hat{x}_' num2str(i) '(t)$'];
    if ~isempty(xNames)
        lbl.xN{i} = xNames{i};
    end
    if ~isempty(xUnits)
        lbl.xUnits{i} = [' $[' xUnits{i} ']$'];
        lbl.xU{i} = [lbl.x{i}  lbl.xUnits{i}];
        lbl.xhU{i}= [lbl.xh{i} lbl.xUnits{i}];
    end
end

lbl.y = cell(1,ny);
lbl.yh = cell(1,ny);
if ~isempty(yUnits)
    lbl.yU = cell(1,ny);
    lbl.yUnits = cell(1,ny);
end

for i = 1:ny
    lbl.y{i} = ['$y_' num2str(i) '(t)$'];
    lbl.yh{i} = ['$\hat{y}_' num2str(i) '(t)$'];
    if ~isempty(yUnits)
        lbl.yUnits{i} = [' $[' yUnits{i} ']$'];
        lbl.yU{i} = [lbl.y{i}  lbl.yUnits{i}];
        lbl.yhU{i}= [lbl.yh{i} lbl.yUnits{i}];
    end
end

