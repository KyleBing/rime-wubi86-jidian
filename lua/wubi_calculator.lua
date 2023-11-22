--- 计算器
--- @KyleBing 2022-01-17
local function calculator(input, seg)
    if string.find(input, 'coco') ~= nil then -- 匹配 coco 开头的字符串
        local _, _, a, operation, b = string.find(input, "coco(%d+%.?%d*)([%+%-%*/])(%d+%.?%d*)")
        local result = 0
        if operation == '+' then
            result = a + b
        elseif operation == '-' then
            result = a - b
        elseif operation == '*' then
            result = a * b
        elseif operation == '/' then
            result = a / b
        end
        yield(Candidate("coco", seg.start, seg._end, result, "计算器"))
    end
end

return calculator