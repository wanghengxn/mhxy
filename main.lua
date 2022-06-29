require("TSLib")
ts = require("ts")
require("account")
require("login")
require("lib")
require("mastertask")
-- require("stage")
require("logout")
-- require("stuffname")
-- require("searchstuff")
require("zhuagui")
require("fengyao")
-- require("zhaowu")
require("shangjia")
require("stage")
require("fuben")
require("config")

bid = "com.netease.mhxyhtb"

init(0)

--初始化
function Init()
	closeApp(bid)
	mSleep(2000)
	closeApp(bid)
	mSleep(2000)
	flag = appIsRunning(bid);
	--如果没有运行
	if flag  == 0 then
		--dialog("当前app未运行")
		runApp(bid)

		local x,y = 重新打开应用()
		if x ~= -1 then
			tap(x, y)
		end
	end
end


::ALL_S::
Init()


local accounts = ReadAccount()
CopyDb()


function DoFy()
	for j = 1, #accounts, 1 do
		::FY_S::
		if IsFyFinished(accounts[j][1], accounts[j][4]) then
			--toast("账号:"..accounts[j][1].."封妖已完成，跳过")
			mSleep(100)
		else

			local res = LoginNew(accounts[j])
			if res == "error" then
				toast("登录异常，正在重启...")
				mSleep(2500)
				Init()
				reLogin = true
				goto FY_S
			end
			--mLog("封妖登录", true)
			local b1,x1,y1 = FindStageUntil(主页, 40)
			if b1 then
				SaveOrUpdate(accounts[j][1], accounts[j][4], typeIs)
				mSleep(500)
				local res = FengYao(accounts[j])
				if res == "error" then
					toast("封妖异常，正在重启...")
					mSleep(2500)
					Init()
					reLogin = true
					goto FY_S
				end

				mSleep(1800)
				local r = Logout()
				if r == "error" then
					toast("退出登录异常，正在重启...", 2)
					mSleep(2500)
					Init()
				end
			end
		end

	end
	fengYaoFinished = true
end

tasks = {0,0,0}
tooMany = false
jingli = true
reLogin = false
function MainLoop()
	for i = 1, #accounts, 1 do
		-- local res = LoginNew(accounts[i])
		-- local b,x,y = FindStageUntil(主页, 40)

		-- if b then
		--     mSleep(3000)
		--     mSleep(3000)
		--     mSleep(3000)
		--     mSleep(3000)
		--     mSleep(3000)
		--     mSleep(3000)
		--     Logout()
		-- end
		::MAIN_S::
		ReadConfig()
		jingli = true
		if IsFengYao() then
			--mLog("当前是封妖时间", true)
			DoFy()
		end

		if IsSmFinished(accounts[i][1], accounts[i][4]) and IsZgFinished(accounts[i][1], accounts[i][4]) then
			--toast("账号:"..accounts[i][1].."师门、抓鬼任务都已完成，跳过")
			mSleep(100)
		else
			local res = LoginNew(accounts[i])
			if res == "error" then
				toast("登录异常，正在重启...")
				mSleep(2500)
				Init()
				reLogin = true
				goto MAIN_S
			end
			local b,x,y = FindStageUntil(主页, 40)

			if b then
				mSleep(500)
				--mLog("进入游戏主界面")
				::M_S::
				if jingli then
					SaveOrUpdate(accounts[i][1], accounts[i][4], typeIs)
					--toast("开始师门任务...")
					ret = MasterTaskNew(false,accounts[i])
					if res == "error" then
						toast("师门任务异常，正在重启...")
						mSleep(2500)
						Init()
						reLogin = true
						goto MAIN_S
					end
					--toast("师门任务结束")

					if IsFengYao() then
						local prevAccount = accounts[i]
						Logout()
						--mLog("当前是封妖时间从头开始封妖")
						DoFy()
						LoginNew(prevAccount)
						goto M_S
					end
					--mSleep(2000)
				end
				::Z_S::
				if jingli then
					SaveOrUpdate(accounts[i][1], accounts[i][4], typeIs)
					--toast("开始抓鬼任务...")
					res = ZhuaGui(false,accounts[i])
					if res == "error" then
						--toast("抓鬼任务异常，正在重启...")
						mSleep(2500)
						Init()
						reLogin = true
						goto MAIN_S
					end
					--toast("抓鬼任务结束")

					if IsFengYao() then
						local prevAccount = accounts[i]
						--mLog("当前是封妖时间从头开始封妖", true)
						local r = Logout()
						if r == "error" then
							--toast("退出登录异常，正在重启...", 2)
							mSleep(2500)
							Init()
						end
						DoFy()
						LoginNew(prevAccount)
						goto Z_S
					end


					local bqk = globalConf["兵器库"]
					if bqk and bqk == "1" then
						BingQK()
					end
					mSleep(2000)
				end
				if jingli == false then
					SaveOrUpdate(accounts[i][1], accounts[i][4], typeZg)
					SaveOrUpdate(accounts[i][1], accounts[i][4], typeSm)
				end
				if IsFengYao() then
					if IsFyFinished(accounts[i][1], accounts[i][4]) then
						--toast("账号:"..accounts[i][1].."封妖已完成，跳过")
					else
						DoFy()
					end
				else
					local ret = ShangJia()
					if ret == "error" then
						--toast("上架葫芦异常，正在重启...")
						mSleep(2500)
						Init()
						goto MAIN_S
					end
				end
				local r = Logout()
				if r == "error" then
					-- toast("退出登录异常，正在重启...", 2)
					mSleep(2500)
					Init()
				end
			end
		end
	end
end

MainLoop()

--重新检查一遍
--toast("10s后开始从头检查一遍", 10)
--mSleep(2000)
--mSleep(2000)
--mSleep(2000)
--mSleep(2000)
--mSleep(2000)
--DeleteAll()
--fengYaoFinished=false
--MainLoop()

while true do
	local hour = tonumber(os.date("%H"))
	local min = tonumber(os.date("%M"))
	if hour == 0 and min > 5 then
		toast("10s后开始第二天的任务...", 10)
		DeleteByDt()
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
		goto ALL_S
	else
		local dd = os.date("%H点%M分")
		toast("当前时间："..dd.."，正在无聊的循环，耐心等待到0点5分开始明天的任务", 6)
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
		mSleep(2000)
	end
end
