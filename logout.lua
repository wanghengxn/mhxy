require("TSLib")
require("lib")
require("stage")
function Logout()
	mTap(MasterPage["更多"], true)
	mTap(MasterPage["系统"], true)
	mTap(MasterPage["账号管理"], true)
	mTap(MasterPage["切换角色"], true)
	mTap(MasterPage["切换角色-确定"], true)

	local b,x,y = FindStageUntil(登录页面, 8)
	if b == false then
		return "error"
	end
end

--Logout()