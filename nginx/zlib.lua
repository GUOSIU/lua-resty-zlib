
local zlib  = require "resty.zlib"

local s = string.rep("abcd", 10000)

local s1 = zlib.compress(s)
local s2 = zlib.uncompress(s1)

ngx.say("解压后：", s1)
ngx.say(s2 == s)
