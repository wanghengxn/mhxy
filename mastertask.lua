require("zhaowu")
require("pt")
require("account")

function MasterTaskNew(once, account)
	--toast("进入师门任务...", 3)
	--mSleep(3200)
	--是否领取任务
	local getTask = false
	local taskType = nil
	local errorCnt = 1
	local debug  = false
	local aa = false
	local bb = false
	local cc = false
	while true do
		if errorCnt > 15 then
			return "error"
		end

		mSleep(433)
		local x,y,t = Compose({官职任务, 充值, 经验超过上限知道了, 充值了解详情, 葫芦太多了, 主页1, 拼图, 任务界面, 领取任务, 师门任务已开始,寻物我来整理,遇见好友, 援助结束, 寻物, 获得一个葫芦,抓怪我准备好了, 巡逻, 寻物遇到神秘人, 战斗中,当前任务抓鬼, 挑战, 再来一次,寻物取消,师门前往}) 
		mLog(string.format("师门循环---坐标:%d，%d，类型:%d",x,y,t))
		if t == -1 then
			mTap({59,   10})
			if errorCnt > 7 then
				mTap({46,  761}, true)
				local x1,y1 = 下方图标()
				if x1 ~= -1 then
					mTap({x1, y1})
					--点击任务
					mTap({206, 763})
				end
			end
			getTask = false
			errorCnt = errorCnt + 1
			--toast("没有找到")
			--mSleep(2000)
		else

		end
		--官职任务
		if t == 1 then
			mTap({x,y}, true)
		end
		--充值
		if t == 2 then
			mTap({x, y}, true)
		end
		--经验超过上限知道了
		if t == 3 then
			if aa then
				--toast("经验超过上限", 3)
				--mSleep(3200)
				mTap({x, y}, true)
				mTap({37,  763}, true)
				jingli = false
				SaveOrUpdate(account[1], account[4], typeSm)
				return false
			else
				aa = true
			end
		else
			aa = false
		end
		--没有精力bb
		if t == 4 then
			if bb then
				--toast("没有精力", 3)
				--mSleep(3200)
				mTap({x, y}, true)
				mTap({x, y}, true)
				mTap({37,  763}, true)
				jingli = false
				SaveOrUpdate(account[1], account[4], typeSm)
				return false
			else
				bb = true
			end
		else
			bb = false
		end

		--葫芦太多了，师门不做了
		if t == 5 then
			if cc then
				--toast("葫芦太多了", 3)
				--mSleep(3200)
				mTap(FengYaoPage["葫芦满了取消"], true)
				mTap({37,  763}, true)
				SaveOrUpdate(account[1], account[4], typeSm)
				return true
			else
				cc = true
			end
		else
			cc = false
		end

		--主页
		if t == 6 then
			--mLog("主页", debug)
			--点击下方任务图标
			mTap(MasterPage["任务图标"], true)
			mSleep(1000)
		end
		--拼图
		if t == 7 then
			local m,n = 问答()
			if m ~= -1 then
				mTap({m, n}, true)
			else
				local ret = pintu()
				if ret == "error" then
					return ret
				end
			end
		end
		--任务
		if t == 8 then
			--mLog("任务", true)
			local m,n = 问答()
			if m ~= -1 then
				--toast("问答")
				mTap({m,n}, true)
			else
				mSleep(1500)
				--师门任务已完成
				if isColor(x-21,y,0xe60515) then
					--mLog("师门任务已完成")
					SaveOrUpdate(account[1], account[4], typeSm)
					return true
				end
				mSleep(1000)
				mTap({x, y}, true)
			end
		end
		--领取任务
		if t == 9 then

			if IsFengYao() or once then
				--随机一下
				mTap({34,  372},true)
				mTap({34,  372})
				mTap({34,  372},true)
				--返回三界
				mTap({81,  701}, true)
				--首页
				mTap({30,  765}, true)
				return false
			end
			local m,n = 师门任务已开始()
			if m ~= -1 then
				mTap(MasterPage["示威"], true)
				mSleep(500)
			else
				--mLog("领取任务", debug)
				mTap({x, y}, true)
			end
		end
		--师门任务已开始
		if t == 10 then
			--mLog("师门任务已开始", debug)
			mTap(MasterPage["示威"], true)
			mSleep(500)
		end
		--我来整理
		if t == 11 then
			--mLog("我来整理", debug)
			mTap({x, y}, true)
		end

		--遇见好友
		if t == 12 then
			--mLog("遇见好友", debug)
			--点击 好的，再见
			mTap({x, y})

			mRandTap({402,  379})
			-- 点击取消任务

			mSleep(200)
			local qx,qy = 取消任务()
			if qx ~= -1 then
				mTap({qx,qy})

				mTap(MasterPage["取消任务-确定"], true)
			end

		end

		--援助结束
		if t == 13 then
			--mLog("援助结束", debug)
			mTap({224,  359}, true)
		end

		--寻物
		if t == 14 then
			--mLog("寻物", debug)
			test1()
			--TaskEnd(少侠好眼力)
		end

		--获得一个葫芦
		if t == 15 then
			--mLog("获得一个葫芦", debug)
			mTap({x, y}, true)
		end

		--抓怪我准备好了
		if t == 16 then
			--mLog("抓怪我准备好了", debug)
			mTap({x,y}, true)
			local b,x,y = FindStageUntil(拼图, 2)
			if b then
				pintu()
				--熊比较特殊，又弹出一个框来
				mTap({245,  279}, true)
				--TaskEnd(抓到了交给师傅)
			end
		end
		--巡逻
		if t == 17 then
			--mLog("巡逻", debug)
			mTap({x, y}, true)
		end

		--遇到神秘人
		if t == 18 then
			--mLog("遇到神秘人", debug)
			mTap({x, y}, true)
		end

		--战斗中
		if t == 19 then
			local a,b = 一倍速度()
			if a ~= -1 then
				mTap({a, b}, true)
			end
			mSleep(500)
		end
		--抓鬼
		if t == 20 then
			--toast("正在进行抓鬼", 3)
			mSleep(500)
			return true
		end

		--挑战
		if t == 21 then
			--mLog("挑战", false)
			mTap({x, y}, true)
		end

		--再来一次
		if t == 22 then

			mTap({x, y}, true)
		end

		--寻物取消
		if t == 23 then

			mTap({402,  693})
			mTap(MasterPage["示威"], true)
		end

		--师门前往
		if t == 24 then

			mTap({x, y}, true)
		end


	end
end


--MasterTaskNew()