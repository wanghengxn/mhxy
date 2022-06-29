require("TSLib")
local ts = require("ts")

globalConf = {}
globalConf["师门"] = "1"
globalConf["抓鬼"] = "1"
globalConf["封妖"] = "14;18"
globalConf["兵器库"] = "0"
globalConf["兵器兑换"] = "0"
local configFile = userPath().."/res/config.txt"
function ConfigInit()
	for k,v in pairs(globalConf) do
		local l = k.."="..v
		writeFileString(configFile, l, "a", 1) --将 table 内容存入文件，成功返回 true
	end
end

function ReadConfig()
	--创建数据文件夹
	local dataDir = userPath().."/res"
	local bool,kind = isFileExist(dataDir)
	if bool then
		toast("数据文件存在")
	else
		local flag = ts.hlfs.makeDir(dataDir)
		if flag then
			toast("创建数据文件成功")
		else
			dialog("创建数据文件失败")
		end
	end

	--当目标文件不存在就复制文件

	bool, kind = isFileExist(configFile)
	--ts.hlfs.copyFile(mSource, mTarget)
	if not bool then
		--ts.hlfs.copyFile(userPath().."/res/1.txt", configFile)
		ConfigInit()
	else
		toast("配置文件已存在")
		local accounts = readFile(configFile)
		--toast(accounts,1)
		if accounts and #accounts >= 1 and accounts[1] ~= '' then
			for i=1,#accounts,1 do
				if accounts[i] ~= "" then
					local accountStr = accounts[i]:atrim()
					local accoutArr = accountStr : split("=")
					globalConf[accoutArr[1]] = accoutArr[2]
				end
			end
		else
			dialog("配置文件不正确")
		end
	end

	return accounts
end