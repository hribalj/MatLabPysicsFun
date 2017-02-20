% dvec calculates the distance between two points 
% returns a vector [x y] 
function dvec = locas2dvec(loca2, loca1)
    x1 = loca2(1) - loca1(1);
    y1 = loca2(2) - loca1(2);
    x = x1/sqrt(x1^2 + y1^2);
    y = y1/sqrt(x1^2 + y1^2);
    dvec = [x y];
end
