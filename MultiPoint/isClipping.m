function bool = isClipping(pntA, vertices)
    dVecs = zeros(length(vertices),2);
    for iter = 1:length(vertices)
        dVecs(iter,:) = disVec(pntA, vertices(iter));
    end
    angles = atan2(dVecs(:,2),dVecs(:,1))
    totalA = sum(angles)
    bool = abs(0-totalA) < 0.05;
end