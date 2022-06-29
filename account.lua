require("TSLib")
ts = require("ts")
require("lib")

--创建数据文件夹
function CreateDataDir()
	local dataDir = userPath().."/res/data"
	local bool,kind = isFileExist(dataDir)
	if bool then
		toast("数据文件存在")
	else
		local flag = ts.hlfs.makeDir(userPath().."/res/data")
		if flag then
			toast("创建数据文件成功")
		else
			dialog("创建数据文件失败")
		end
	end
end

--当目标文件不存在就复制文件
function CopyFile(source, target)
	local mSource = userPath().."/res/"..source
	local mTarget = userPath().."/res/data/"..target
	local bool,kind = isFileExist(mTarget)
	if not bool then
		ts.hlfs.copyFile(mSource, mTarget)
	else
		toast("要复制的文件已存在")
	end
	return not bool
end

local dbPath = userPath().."/res/prod.db"
--读取账号信息
function ReadAccount()
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
	local mSource = userPath().."/res/1.txt"
	local mTarget = dataDir.."/account.txt"
	bool, kind = isFileExist(mTarget)
	--ts.hlfs.copyFile(mSource, mTarget)
	if not bool then
		ts.hlfs.copyFile(mSource, mTarget)
	else
		toast("要复制的文件已存在")
	end
	local accounts = readFile(mTarget)
	--toast(accounts,1)
	if accounts and #accounts >= 1 then
		for i=1,#accounts,1 do
			local accountStr = accounts[i]:atrim()
			local accoutArr = accountStr : split("----")
			accounts[i] = accoutArr
--			if accounts[i][1] == "36409234@163.com" then
--				dialog(accountStr)
--				dialog(accounts[i][4])
--			end
		end
	else
		dialog("文件不存在或者文件里没有账号数据")
	end
	return accounts
end

function CopyDb()
	bool, kind = isFileExist(dbPath)
	if not bool then
		ts.hlfs.copyFile(userPath().."/res/my.db", dbPath)
	else
		toast("数据库文件已存在")
	end
end

typeIs = 0
typeSm = 1
typeZg = 2
typeFy = 3

function FindOneByIdx(account, accountIdx)
	local dt = os.date("%Y%m%d")
	local sql = "select * from my where dt='"..dt.."' and acc='"..account.."' and idx="..accountIdx
	--dialog(sql)
	local status,result = ts.dborder(dbPath, sql)
	if status == 1 and #result > 0 then
		return result[1]
	else
		return nil
	end
end
function SaveOrUpdate(account, accountIdx, t)
	local dt = os.date("%Y%m%d")
	local record = FindOneByIdx(account, accountIdx)
	if not record then
		ts.dborder(dbPath, "insert into my(dt,acc,idx) values('"..dt.."','"..account.."',"..accountIdx..")")
	end
	local sql = ""
	if t == typeSm then
		sql = "update my set sm = 1 where dt='"..dt.."' and acc='"..account.."' and idx="..accountIdx
	elseif t == typeZg then
		sql = "update my set zg = 1 where dt='"..dt.."' and acc='"..account.."' and idx="..accountIdx
	elseif t == typeFy then
		sql = "update my set fy = 1 where dt='"..dt.."' and acc='"..account.."' and idx="..accountIdx
	end

	if t ~= 0 then
		ts.dborder(dbPath, sql)
	end
end
function FindToday()
	local dt = os.date("%Y%m%d")
	local sql = "select acc,idx from my where dt='"..dt.."' and (sm=0 or fy=0)"
	--dialog(sql)
	local status,result = ts.dborder(dbPath, sql)
	return result
end
function DeleteAll()
	local sql = "delete from my"
	ts.dborder(dbPath, sql)
end
function DeleteByDt()
	local dt = os.date("%Y%m%d")
	local sql = "delete from my where dt<>'"..dt.."'"
	ts.dborder(dbPath, sql)
end
function DeleteByAccount(account)
	local sql = "delete from my where acc='"..account.."'"
	ts.dborder(dbPath, sql)
end
function FindAll()
	local sql = "select * from my"
	local s,r = ts.dborder(dbPath, sql)
	return r
end
function IsSmFinished(account, accountIdx)
	local r = FindOneByIdx(account, accountIdx)
	if r and r["sm"] == "1" then
		return true
	end
	return false
end
function IsZgFinished(account, accountIdx)
	local r = FindOneByIdx(account, accountIdx)
	if r and r["zg"] == "1" then
		return true
	end
	return false
end
function IsFyFinished(account, accountIdx)
	local r = FindOneByIdx(account, accountIdx)
	if r and r["fy"] == "1" then
		return true
	end
	return false
end

--SaveOrUpdate("13793646111qwertyu@163.com", 1, 0)
-- SaveOrUpdate("13793646111qwertyu@163.com", 1, 1)
-- local r = FindOneByIdx("011832027995401@163.com", 1)
-- local mm = json.encode(r); 
-- dialog("添加成功："..mm ,0)
-- dialog(type(r["sm"]))
--DeleteAll()
-- local r = FindAll()
-- local mm = json.encode(r); 
-- dialog("添加成功："..mm ,0)
--DeleteByAccount()