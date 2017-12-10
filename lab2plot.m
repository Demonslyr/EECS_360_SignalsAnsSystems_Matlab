figure

subplot(2,2,1)
cylinder
title('Cylinder')

subplot(2,2,2)
sphere
title('Sphere')

subplot(2,2,3)
ellipsoid(0,0,0,5.9,3.25,3.25,30)
title('Ellipsoid')

subplot(2,2,4)
worldmap('antarctica')
antarctica = shaperead('landareas', 'UseGeoCoords', true,...
  'Selector',{@(name) strcmp(name,'Antarctica'), 'Name'});
patchm(antarctica.Lat, antarctica.Lon, [0.5 1 0.5])
title('Antarctica')
