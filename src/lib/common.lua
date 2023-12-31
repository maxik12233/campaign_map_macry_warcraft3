-- Get the wc3 type string equivalent (nil == null, float == real, int == integer ...)
function wc3type(ptr)
    local typ = type(ptr)
    if typ == "userdata" then
        typ = string.match(tostring(ptr), "([^%%s]+):")
        if typ == nil then typ = string.match(tostring(ptr), "([^%%s]+)") end
    elseif typ == "number" then
        if string.match(tostring(ptr), "([^%%s]+).") then
            return "real"
        else
            return "integer"
        end
    end
    return typ
end

-- Check if given value integer or not
function isInt(num)
    if math.type(num) == nil then return false end
    return true
end

-- Distance between 2 points on coords
function distanceXY(x1, y1, x2, y2)
    return SquareRoot(Pow(x1 - x2, 2) + Pow(y1 - y2, 2))
end

function angleXY(x1, y1, x, y)
    return ((180.0 / 3.14159 * Atan2(y1 - y, x1 - x)) + 180) * bj_DEGTORAD
end
