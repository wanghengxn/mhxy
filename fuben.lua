require("TSLib")
require("stage")
require("fubenStage")
require("config")
require("lib")

function BingQK()
	local errorCnt = 1
	while true do
		if errorCnt > 15 then
			return "error"
		end
		mSleep(931)
		local x,y,t = Compose({兑换精力不足, 副本确定, 兵器兑换, 破解封印, 副本继续, 副本, 副本挑战, 下一关, 消耗精力, 确认破解, 战斗中, 主页1})
		mLog(string.format("兵器库循环---坐标:%d，%d，类型:%d",x,y,t))
		if t == -1 then
			mTap({59, 10})
			local x1,y1 = 下方图标()
			if x1 ~= -1 then
				mTap({x1, y1})
				a = false
			end
			errorCnt = errorCnt + 1
			--toast("没找到")
		else
			errorCnt = 1
		end
		--兑换精力不足
		if t == 1 then
			mTap({x, y}, true)
			--x号
			mTap({444, 92}, true)
			--主页
			mTap({36,  752}, true)
			return true
		end
		--副本确定
		if t == 2 then
			mTap({x, y}, true)
			local bqdh = globalConf["兵器兑换"]
			if not bqdh or bqdh ~= "1" then
				toast("不做兵器兑换", 2)
				return true
			end
			--FindStageUntil(兵器兑换, 5)
		end
		--兵器兑换
		if t == 3 then
			dialog("先暂停脚本，手动选装备")
			return true
		end
		--破解封印
		if t == 4 then
			mTap({x, y}, true)
		end
		--副本继续
		if t == 5 then
			mTap({x, y}, true)
		end
		
		--副本
		if t == 6 then
			local clicked = false
			for i = 1,3,1 do
				local m,n = 兵器库()
				if isColor(m,n-64,0xe60515) then
					return true
				end
				if m ~= -1 then
					mTap({(m + 10), (n - 50)}, true)
					--点击开启
					mTap({243,  542}, true)
					clicked = false
				else
					--点击右边箭头
					mTap({425,  429}, true)
					mTap({425,  429}, true)
					clicked = true
				end
			end
			if clicked then
				for i = 1,3,1 do
					--点击左边箭头
					mTap({55,  428}, true)
					mTap({55,  428}, true)
				end
			end
		end
		--副本挑战
		if t == 7 then
			--副本下面是兵器库之谜才继续
			if (isColor( 202,  163, 0x39578a, 85) and 
				isColor( 200,  163, 0x3f5c8e, 85) and 
				isColor( 193,  164, 0x345286, 85) and 
				isColor( 193,  174, 0x355387, 85) and 
				isColor( 190,  174, 0x3d5a8d, 85) and 
				isColor( 204,  174, 0x3d5a8c, 85) and 
				isColor( 204,  168, 0x39578a, 85) and 
				isColor( 201,  170, 0x3e5b8d, 85) and 
				isColor( 203,  178, 0x395689, 85) and 
				isColor( 191,  179, 0x345286, 85)) then
				mTap({x, y}, true)
			else
				--返回
				mTap({40,  126}, true)
			end
		end
		--下一关
		if t == 8 then
			mTap({x,  y}, true)
		end
		--消耗精力
		if t == 9 then
			mTap({x, y}, true)
		end
		--确认破解
		if t == 10 then
			mTap({x, y}, true)
		end
	
		--战斗中
		if t == 11 then
			local a,b = 一倍速度()
			if a ~= -1 then
				mTap({a, b}, true)
				mSleep(400)
			end
		end
		
		--主页1
		if t == 12 then
			--主页图标
			mTap({33,  762}, true)
			--副本
			mTap({123,  390}, true)
		end
	end
end

--local x1,y1 = 下方图标()
--dialog(x1..","..y1)
--BingQK()