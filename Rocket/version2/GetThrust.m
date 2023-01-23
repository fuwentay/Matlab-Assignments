%Fu Wen Tay, 23Jan, Exercise 3b: Version 2

function thrust = GetThrust(Th, t, burnTime)
    if t < burnTime
        thrust = Th;
    else
        thrust = 0;
    end