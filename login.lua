require("lib")
require("stage")
--登录

function LoginNew(account)
	FindStageUntil(登录页面, 30)
	mLog("进入登录页面循环")
	local switched = false
	local picked = false
	local logined = false
	if reLogin then
		logined = true
		reLogin = false
	end
	local errorCnt = 1
	local aa = 1
	while true do
		mSleep(537)
		if errorCnt >= 10 then
			mLog("在登录页面循环了10次，异常退出")
			return "error"
		end
		local x,y,t = Compose({适龄提示,将军令,已登录账号,选择登录角色,确定删除账号,新建或选择角色,输入账号密码1,服务器选择,确定进入口袋版, 观看录像})
		mLog(string.format("登录循环---坐标:%d，%d，类型:%d",x,y,t))
		if t ~= -1 then
			if t == 1 then
				--点击关闭
				--mLog("适龄提示")
				mTap({x, y}, true)
			end
			if t == 2 then
				--toast("将军令", 2)
				
				mTap({x, y}, true)
				logined = true
				FindStageUntil(已登录账号, 8)
			end
			if t == 3 then
				--mLog("已登录账号, switched"..tostring(switched), false)
				if switched == false then
					--点击切换角色
					mTap({x, y}, true)
				else
					--点击右侧口袋小孩
					mTap(LoginPage["进入口袋"], true)
				end
			end

			if t == 4 then
				--mLog("选择登录角色")
				local f,g,h = FindStageUntil(输入账号密码1, 2)
				if f then
					mTap({g,h}, true)
				end
				--点击管理右边的图标
				mTap({x, y}, true)
				--点击红叉删除角色
				mTap(LoginPage["删除角色红叉"], true)	
			end

			if t == 5 then
				--mLog("确定删除账号")
				--点击确定
				mTap({x, y}, true)
				--关闭角色弹窗
				mTap(LoginPage["关闭角色弹窗"], true)
				switched = true
				logined = false
			end

			if t == 6 then
				--mLog("新建或选择角色")
				--点击绿色十字
				mTap({x, y}, true)
			end

			--输入账号密码
			if t == 7 then
				--mLog("输入账号密码,logined:"..tostring(logined))
				if logined == false then
					mTap({x, y-30}, true)
					-- 第一遍点击已经有账号，点x
					mTap(LoginPage["账号输入框后面的叉号"], true)
					-- 第二遍点击是放置光标
					mTap(LoginPage["账号输入框后面的叉号"], true)
					-- 输入账号
					inputText(account[1])
					-- 点击密码输入框
					mTap(LoginPage["密码输入框"], true)
					--delPwd()
					inputText(account[2])
					-- 点击登录按钮
					mTap(LoginPage["登录按钮"], true)
					logined = true
					
				else
					mTap(LoginPage["登录按钮"], true)
					FindStageUntil(服务器选择, 4)
					errorCnt = errorCnt + 1
					if errorCnt > 2 then
						logined = false
					end
					
				end
				FindStageUntil(服务器选择, 6)
			end

			--选择服务器和角色页面
			if t == 8 then
				--mLog("选择服务器和角色页面")
				local f,g,h = FindStageUntil(输入账号密码1, 2)
				if f then
					return "error"
				end
				if aa > 5 then
					--循环5次还没有点击角色进入说明有问题，点击x号
					aa = 1
					mTap({457,  753}, true)
					logined = false
				end
				aa = aa + 1
				-- if picked == false then
				-- 	local touch = touch()
				-- 	touch:Delay(400):on(LoginPage["选择角色服务区滑动"][1][1],LoginPage["选择角色服务区滑动"][1][2]):move(LoginPage["选择角色服务区滑动"][2][1],LoginPage["选择角色服务区滑动"][2][2]):off()	
				-- 	picked = true
				-- end
				--mSleep(1000)
				local a,b = 没有选择服务器()
				if a ~= -1 then
					--点叉号
					mTap({460,  755}, true)
				else
					
					--等待有角色出来
					for i = 1, 10, 1 do
						mSleep(600)
						local color = getColor(354,  535)
						if color ~= 0x28333b then
							break
						end
					end
					--mSleep(900)
					local roleIndex = tonumber(account[4])
					if roleIndex > 4 then
						local xx,yy = 294,615
						local dxx = (roleIndex - 4) * 84 + xx
						local touch = touch()
						touch:Delay(100):on(xx,  yy):move(dxx, yy):off()
						roleIndex = 4
						mSleep(200)
					end
					mTap(LoginPage["人物"][roleIndex], true)

				end
				
				-- local x, y =  331,  395--FindService(account[3])
				-- mSleep(800)
				-- if x > 1 then
				-- 	picked = true
				-- 	--选择服务器
				-- 	mTap({x, y}, true)
				-- 	--点击人物
				-- 	mSleep(800)
				-- 	local roleIndex = tonumber(account[4])
				-- 	mTap(LoginPage["人物"][roleIndex], true)
				-- else
				-- 	mLog("没有找到服务区"..account[3])
				-- end
			end

			if t == 9 then
				--mLog("确定进入口袋版")
				--是否要进入口袋版？确定按钮
				mTap({x, y}, true)
				return true
			end
			if t == 10 then
				mTap({x, y}, true)
			end

		else
			errorCnt = errorCnt + 1
			--DoException()	
		end
	end
end

function switchAccount()
	toast("切换账号退出")
	mTap(LoginPage["切换账号"])
	--随便点击一下
	mRandTap({240, 448})
	--点击管理按钮
	local rolePage = multiColor(LoginPage["选择登录角色"])
	if rolePage then
		mTap(LoginPage["管理角色按钮"], true)
		--点击红叉删除角色
		mTap(LoginPage["删除角色红叉"], true)
		--点击删除角色确认

		mTap(LoginPage["删除角色确认"], true)
		--关闭角色弹窗
		mTap(LoginPage["关闭角色弹窗"], true)
	else
		toast("没有找到管理角色按钮")
	end
end

-- 输入账号密码
function inputAccount(account)
	local bool,tim,x,y = findColorsUntil( 0xb0b8c8, "4|19|0x31424b,7|28|0x688490,8|39|0x32444d", 90, 0, 159, 475, 620)
	if bool then
		--dialog(string.format("找到账号输入框坐标是x:%d, y:%d", x, y))
		mTap({x, y}, true)
		-- 第一遍点击已经有账号，点x
		mTap(LoginPage["账号输入框后面的叉号"], true)
		-- 第二遍点击是放置光标
		mTap(LoginPage["账号输入框后面的叉号"], true)
		-- 输入账号
		inputText(account[1])
		-- 点击密码输入框
		mTap(LoginPage["密码输入框"], true)
		--delPwd()
		inputText(account[2])
		-- 点击登录按钮
		mTap(LoginPage["登录按钮"], true)
	end
end

--删除密码框中已有的密码，现在只支持最多20个密码
function delPwd()
	for i = 1, 20, 1 do
		inputText("\b")
		mSleep(50)
	end
end

--选择角色
function pickRole(account)
	local resetCnt = 0

	local bool,x,y = false,-1,-1
	::PR_STEP1:: do
		resetCnt = resetCnt + 1
		bool,x,y = FindStageUntil(选择服务器和角色页面, 3)
	end
	if bool then
		local touch = touch()
		touch:Delay(400):on(LoginPage["选择角色服务区滑动"][1][1],LoginPage["选择角色服务区滑动"][1][2]):move(LoginPage["选择角色服务区滑动"][2][1],LoginPage["选择角色服务区滑动"][2][2]):off()

		local x, y = FindService(account[3])
		mSleep(600)
		if x > 1 then
			--选择服务器
			mTap({x, y}, true)
			--点击人物
			mSleep(800)
			local roleIndex = tonumber(account[4])
			mTap(LoginPage["人物"][roleIndex], true)
		else
			toast("没有找到服务区"..account[3])
		end
	else
		toast("没有找到选择服务器和角色页面")
	end
	
end