function dirfield(funn,fbgrid)

%funn = @(x,y)y-x;                % function f(x,y)=y-x
[x,y]=meshgrid(fbgrid);        % intervals for x and y
slopes=funn(x,y);                % matrix of slopes
dy=slopes./sqrt(1+slopes.^2);    % normalize the line element...
dx=sqrt(1-dy.^2);                % ...magnitudes for dy and dx 
quiver(x,y,dx,dy);               % plot the direction field
