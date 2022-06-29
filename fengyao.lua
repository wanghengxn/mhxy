require("TSLib")
require("stage")
require("lib")
require("mastertask")
require("zhuagui")
require("account")


function FengYao(account)
    --toast("进入封妖...", 3)
    --mSleep(3200)
    local errorCnt = 1
    while true do
        if errorCnt > 15 then
            return "error"
        end
        mSleep(931)
        local x,y,t = Compose({副本, 正在做任务, 进入封妖,所有妖怪均已封印, 封妖, 主页1, 战斗中})
        mLog(string.format("封妖循环---坐标:%d，%d，类型:%d",x,y,t))
		if t == -1 then
            mTap({59,   10})
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
		--副本
		if t == 1 then
			mTap({x,y}, true)
		end
        if t == 2 then
            --toast("正在做任务")
            mSleep(1000)
            mTap({x, y}, true)
            
            local b,x,y = FindStageUntil(当前任务抓鬼, 2)
            if x ~= -1 then
                ZhuaGui(true, account)
            else
                MasterTaskNew(true, account)
            end
			mTap({171,  367},true)
			mTap({105,  697}, true)
        end
		if t == 3 then
			--toast("进入封妖")
            mTap({x,  y}, true)
        end
        if t == 4 then
            --toast("所有妖怪均已封印")
            mTap({230,  286}, true)
            return true
        end
        if t == 5 then
            --toast("封妖")
            local a,b = 封妖结束()
            if a ~= -1 then
				SaveOrUpdate(account[1], account[4], typeFy)
                return true
            end
            mTap({x, y}, true)
        end
		
		if t == 6 then
			--toast("主页")
			--点击进入
			mTap(FengYaoPage["进入"], true)
            local l,m,n = FindStageUntil(进入封妖, 5)
            if l then
                mTap({m,n}, true)
            end
        end
        if t == 7 then
            local a,b = 一倍速度()
            if a ~= -1 then
                mTap({a, b}, true)
                mSleep(400)
            end
        end
    end
end

--FengYao()