require("TSLib")

--local bool,tim,x,y = findColorsUntil( 0x49689d, "19|-4|0x5472a5,31|36|0x5976b2,31|64|0x5774b1,12|1|0x5472a4", 90, 112, 127, 228, 571)
--dialog("x: "..x..",y: "..y)

require("mastertask")
require("lib")
require("stage")

--MasterTask()
--mTap(MasterPage["取消"], true)
--local x,y=抓到了交给师傅()
--dialog("x:"..x..",Y:"..y)
--mTap({x,y}, true)



-- local aa =  {
--     {0x7f4b2d, "4|-14|0x511915,3|24|0x823300,-17|28|0xd77733,-31|18|0xfbf0ce,-26|3|0x88ae1d,-35|-8|0xe4efb7,-27|-21|0x90bb19", 90, 26, 219, 411, 595},
--     {0x84ccee, "17|2|0x405a9f,28|2|0x972245,35|-3|0xe06d7a,-24|5|0x28aa44,-19|2|0x223b66,-29|14|0x118934,-19|22|0x6cdf6c", 90, 26, 219, 411, 595},
--     {0xa84e17, "-23|-17|0xcdeb77,-38|-12|0xfbfce3,-29|20|0xf8f5d3,-21|10|0xc1dc49,-9|26|0xb26e3d,6|21|0x7d3503,15|-2|0x562108", 90, 26, 219, 411, 595},
--     --new
--     {0xa2562b, "-22|-5|0xbc6b28,-21|-25|0xeeffe1,13|-33|0xe7f1c0,-5|-21|0x9ec027,19|-19|0x80af15,17|-2|0x784426,13|5|0x572211,2|15|0x501f06,-15|10|0x853300", 90, 26, 219, 411, 595},
-- }
-- while true do
--     mLog("开始寻物")
--     for i = 1, #aa, 1 do
--         local x,y = findMultiColorInRegionFuzzy(table.unpack(aa[i]))
--         if x ~= -1 then
--             mTap({x, y}, true)
--         end
--     end    
--     mSleep(700)
--     mTap({432,  623}, true)
-- 	mTap({432,  623})
-- end

-- x,y = findMultiColorInRegionFuzzy(0x397c60, "11|17|0x446b44,2|52|0x557e5c,11|44|0x5aaa83,29|37|0x0b221b,34|28|0x32614a,-10|3|0x77bb88,6|52|0x9cca9a", 90, 363, 677, 426, 711)
--x,y = findMultiColorInRegionFuzzy(0x38568a, "0|6|0x375689,0|12|0x3a588c,-1|15|0x345286,8|0|0x355387,6|9|0x38568a,4|4|0x345286,15|17|0x345286,12|12|0x3a588c", 90, 41, 347, 441, 467)
--x,y = findMultiColorInRegionFuzzy( 0xbca149, "-8|-8|0xeedf35,13|-15|0xffda22,-21|15|0xc06323,-8|11|0x763706,0|-28|0xa4764a", 90, 9, 174, 478, 640)
--dialog("x:"..x..",y:"..y)
-- local x,y,t = Compose({经验超过上限知道了, 充值了解详情, 当前任务抓鬼,葫芦太多了, 主页1, 任务界面, 领取任务, 师门任务已开始,寻物我来整理,遇见好友, 援助结束, 寻物, 获得一个葫芦,抓怪我准备好了, 巡逻, 寻物遇到神秘人, 战斗中, 挑战, 再来一次,寻物取消,师门前往,拼图})
-- dialog("x:"..x..",y:"..y..",t:"..t)
--local x,y,t = Compose({官职任务, 
--		充值,
--		经验超过上限知道了, 
--		充值了解详情, 
--		葫芦太多了, 
--		主页1, 
--		拼图, 
--		任务界面, 
--		领取任务, 
--		师门任务已开始,
--		寻物我来整理,
--		遇见好友, 
--		援助结束, 
--		寻物, 
--		获得一个葫芦,
--		抓怪我准备好了, 
--		巡逻, 寻物遇到神秘人, 战斗中,当前任务抓鬼, 挑战, 再来一次,寻物取消,师门前往}) 
--local x,y,t = Compose({官职任务, 
--		充值, 
--		经验超过上限知道了, 
--		充值了解详情, 
--		葫芦太多了, 
--		主页1, 
--		寻物,
--		抓鬼任务,
--		帮忙抓鬼, 
--		前往, 
--		抓鬼已开始,
--		获得一个葫芦, 
--		战斗中, 
--		拼图, 
--		继续})
require("fubenStage")
local x,y,t = Compose({兑换精力不足, 副本确定, 兵器兑换, 破解封印, 副本继续, 副本, 副本挑战, 下一关, 消耗精力, 确认破解, 战斗中, 主页1})
dialog("x:"..x..",y:"..y..",t:"..t)
--mTap({x,y},true)

-- local x,y,t = Compose({葫芦太多了, 主页1, 寻物,抓鬼任务,帮忙抓鬼, 前往, 抓鬼已开始, 获得一个葫芦, 战斗中, 拼图, 继续})
-- dialog("t:"..t)
-- dialog(os.date("%Y%m%d"))
-- local b = multiColor({
-- 	{  382,  257, 0xedf0f3},
-- 	{  388,  253, 0xeff2f5},
-- 	{  406,  251, 0xf9fafb},
-- 	{  409,  262, 0xf1f5f7},
-- })
-- dialog(tostring(b))

-- x = {}
-- x[1] = getColor(197,  771)
-- x[2] = getColor(186,  772)
-- x[3] = getColor(219,  749)
-- x[4] = getColor(219,  741)
-- x[5] = getColor(227,  742)
-- x[6] = getColor(231,  742)
-- for i=1,#x,1 do
-- 	dialog(string.format("颜色%x", x[i]))
-- end

--MasterTaskNew()

--hour = tonumber(hour)
