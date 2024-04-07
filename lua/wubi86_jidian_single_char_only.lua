--- 过滤器：只显示单字
local function wubi86_jidian_single_char_only(input)
    for cand in input:iter() do
        if (utf8.len(cand.text) == 1) then
            yield(cand)
        end
    end
end

return wubi86_jidian_single_char_only




