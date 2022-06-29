require("TSLib")
local ts = require("ts")
--工具

-- 封装点击
function mTap(xy, before)
    if before then
        mSleep(randTapTime(400, 510))
    end
	--tap(xy[1], xy[2], 55, "1.png", 1)
	tap(xy[1], xy[2])
	mSleep(randTapTime(100, 350))
end

function mRandTap(xy, before)
    if before then
        mSleep(randTapTime(200, 510))
    end
    randomTap(xy[1], xy[2], 10)
    mSleep(randTapTime(200, 350))
end

function randTapTime(up, down)
    math.randomseed(getRndNum()) -- 随机种子初始化真随机数
    local num = math.random(up, down)
    return num;
end
local sFile = userPath().."/res/1.txt"
function getList(path)
    local a = io.popen("ls "..path);
    local f = {};
    for l in a:lines() do
        table.insert(f,l)
    end
    a:close()
    return f
end
function EnsureFile(path, isDir)
	local b,k = isFileExist(path)
	if not b then
		--dialog(tostring(k))
		if isDir then
			ts.hlfs.makeDir(path)
		else
			ts.hlfs.copyFile(sFile, path)
		end
	else
		if isDir then
			local list = getList(path)
			if #list > 3 then
				ts.hlfs.removeDir(path)
			end
		end
	end
end
local debug = true
function mLog(content)
--	local logDir = userPath().."/res/logs"
--	EnsureFile(logDir, true)
--	local logFile = logDir.."/"..os.date("%Y%m%d%H%M")..".txt"
--	EnsureFile(logFile, false)
--	writeFileString(logFile, content, "a", 1)
end
function testTap(xy)
    tap(xy[1], xy[2], 8000, "1.png", 1)
end

isFengYao = false
fengYaoFinished = false
--是否是封妖时间
function IsFengYao()
	if fengYaoFinished then
		isFengYao = false
		return isFengYao
	end
	local hour =os.date("%H")
	local min = os.date("%M")
	--dialog(string.format("hour: %d", hour))
	
	hour = tonumber(hour)
	min = tonumber(min)
	if ((hour == 12 and min >= 30) or hour >= 13) and hour < 18 then
		mLog("封妖时间")
		isFengYao = true
	end
	return isFengYao
end
LoginPage = {}
LoginPage["新建或选择角色"]={
	{  209,  285, 0x06c40d},
	{  210,  348, 0xffffff},
	{  208,  413, 0xffffff},
	{  208,  474, 0x3b4a85},
	{  208,  500, 0x5dc918},
	{  209,  527, 0xb8b0d9},
}
LoginPage["绿色十字登录按钮"]={210, 495}


LoginPage["切换账号"]={208, 557}
LoginPage["适龄提示关闭"]={456,  739}
LoginPage["管理角色按钮"]={410,  518}
LoginPage["删除角色红叉"]={329,  152}
LoginPage["关闭角色弹窗"]={458,  752}
LoginPage["删除角色确认"]={176,  486}

LoginPage["账号输入框后面的叉号"]={351,  509}
LoginPage["密码输入框"]={291,  385}
LoginPage["登录按钮"]={274,  375}
LoginPage["人物"]={{331,  634},{251,  594},{167,  600},{63,  650}}
LoginPage["进入口袋"]={211,  752}
LoginPage["进入口袋确定"]={180,  492}

LoginPage["选择角色服务区滑动"]={{285,  393}, {201,  395}}

LoginPage["已登录账号"]={
	{  207,  559, 0x4a6874},
	{  201,  552, 0xffffff},
	{  191,  528, 0x8b8bb7},
	{   96,  488, 0x550805},
	{   76,  483, 0xddbd18},
}

LoginPage["选择登录角色"]={
	{  412,   88, 0x582c2b},
	{  409,  137, 0xf3f4f5},
	{  452,  278, 0x384489},
	{  460,  421, 0xdadce9},
	{  409,  580, 0xe8eaeb},
	{  421,  625, 0x21323d},
}

-- 师门任务
MasterPage = {}

MasterPage["任务-关闭"]={456,   49}

MasterPage["任务图标"]={196,  767}
MasterPage["领取任务按钮"]={400,  686}
MasterPage["取消"]={245,  696}
MasterPage["寻物任务取消"] = {49,  681}

MasterPage["示威"]={427,  257}

MasterPage["取消任务"]={70,  253}
MasterPage["取消任务-确定"]={364,  695}

--抓怪
MasterPage["抓怪"]={421,  249}
MasterPage["抓怪-我准备好了"]={436,  683}
MasterPage["抓怪-我先休息一下"]={267,  688}

--寻物
MasterPage["寻物-地点"]={360,  247}
MasterPage["寻物-我休息一下"]={232,  693}
MasterPage["寻物-我来整理"]={405,  698}
MasterPage["寻物-关闭"]={436,  290}
MasterPage["寻物-开始"]={248,  495}
--援助
MasterPage["援助"]={399,  260}

MasterPage["交付"]={399,  260}

ZhuaPage={}
ZhuaPage["出发"] ={419,  252}

--退出
MasterPage["更多"]={443,  762}
MasterPage["系统"]={446,  681}
MasterPage["账号管理"]={382,  389}
MasterPage["切换角色"]={144,  486}
MasterPage["切换角色-确定"]={ 333,  411}

FengYaoPage= {}
FengYaoPage["进入"] = {275,  68}

FengYaoPage["葫芦满了取消"] = {252,  697}