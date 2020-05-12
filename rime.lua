function date_translator(input, seg)
   if (input == "date") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "年-月-日"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "年月日"))
   end
   if (input == "time") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), "时分秒"))
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), "时分"))
	  yield(Candidate("time", seg.start, seg._end, os.date("%Y%m%d%H%M%S"), "长时间"))
   end
end

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
   for i, cand in ipairs(l) do
      yield(cand)
   end
end
