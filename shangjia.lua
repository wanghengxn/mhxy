require("TSLib")
require("lib")
require("stage")

function ShangJia()
	local errorCnt = 1
	local status = 1
	local selected = false
	local 出售 = {87,  664}
	::CONTINUE::
	while true do
		if errorCnt > 15 then
			return "error"
		end

		--mLog("正在循环...", true)
		mSleep(433)
		local x,y,t = -1,-1,-1
		if status == 1 then
			x,y,t = Compose({紫葫芦,金葫芦, 师门葫芦,  确定出售, 宝库,主页})
		elseif status == 2 then
			x,y,t = Compose({紫葫芦,金葫芦, 抓鬼葫芦,  确定出售, 宝库,主页})
		else
			return true
		end


		toast(string.format("卖葫芦循环---坐标:%d，%d，类型:%d, status:%d",x,y,t,status))
		if t == -1 then
			mTap({59,   10})
			local x1,y1 = 下方图标()
			if x1 ~= -1 then
				mTap({x1, y1})
			end
			--mLog("没找到", true)
			--mSleep(2000)
			errorCnt = errorCnt + 1
		else
			errorCnt = 1
		end

		if t == 1 then
			--toast("紫葫芦")
			mTap({x, y}, true)
			mTap({376,  664}, true)
		end
		if t == 2 then
			--toast("金葫芦")
			mTap({x, y}, true)
			mTap({376,  664}, true)
		end
		if t == 3 then
			for i=1,6,1 do
				--抓鬼或者
				--toast("抓鬼或者师门葫芦x:"..x..",y:"..y)
				mTap({x, y}, true)

				mTap(出售, true)
				--toast("点击了出售")
				--mSleep(3000)
				local m,a,b = FindStageUntil(确定出售, 4)
				if m  == false then
					status = status + 1
					break
				else
					mTap({a, b}, true)
					local o,p,q = FindStageUntil(不可售, 2)
					if o then
						status = status + 1
						break
					end
				end
			end
		end
		if t == 4 then
			--mLog("出售确定", true)
			--mSleep(2000)
			mTap({x, y}, true)
			local m,a,b = FindStageUntil(不可售, 2)
			if m then
				status = status + 1
				--toast("出售确定status:"..status)
				if status == 3 then
					return true
				end
			end
		end

		if t == 5 then
			--toast("宝库")
			--宝库
			mTap({x,  y+66}, true)
			if status == 1 then
				local b,k,l = FindStageUntil(师门葫芦, 4)
				if b == false then
					status = status + 1
				end
			elseif status == 2 then
				local b,k,l = FindStageUntil(抓鬼葫芦, 4)
				if b == false then
					status = status + 1
				end
			end
		end

		if t == 6 then
			--S首页
			mTap({36,  763}, true)
			--宝库
			mTap({124,  502}, true)

		end
	end
end
--ShangJia()