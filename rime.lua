--- 过滤器：单字在先
function single_char_first_filter(input)
    local l = {}
    for cand in input:iter() do
        if (utf8.len(cand.text) == 1) then
            yield(cand)
        else
            table.insert(l, cand)
        end
    end
    for cand in ipairs(l) do
        yield(cand)
    end
end

--- 计算器
--- @KyleBing 2022-01-17

function calculator(input, seg)
    if string.find(input, 'coco') ~= nil then -- 匹配 coco 开头的字符串
        local _, _, a, operation, b = string.find(input, "coco(%d+%.?%d+)([%+%-%*/])(%d+%.?%d+)")
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


function date_translator(input, seg)
    if (input == "date") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y.%m.%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y/%m/%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%m-%d-%Y"), ""))
    end
    if (input == "time") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), ""))
        yield(Candidate("time", seg.start, seg._end, os.date("%Y%m%d%H%M%S"), ""))
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
    end

    -- @JiandanDream
    -- https://github.com/KyleBing/rime-wubi86-jidian/issues/54

    if (input == "week") then
        local weakTab = {'日', '一', '二', '三', '四', '五', '六'}
        yield(Candidate("week", seg.start, seg._end, "周"..weakTab[tonumber(os.date("%w")+1)], ""))
        yield(Candidate("week", seg.start, seg._end, "星期"..weakTab[tonumber(os.date("%w")+1)], ""))
    end
end
