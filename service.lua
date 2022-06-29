require("TSLib")
local services = {}
services["青岛栈桥"]={0x101013, "2|15|0x050405,-9|16|0x0f0e12,-3|30|0x050506", 90, 20, 301, 380, 487}
services["水泊梁山"]={0x070709, "-1|3|0x09080a,-6|17|0x0e0e11,-6|36|0x020202,-9|47|0x060607", 90, 20, 301, 380, 487}
services["洞庭湖"]={0x141318, "-7|4|0x010101,-11|14|0x050506,-9|34|0x0a0a0c,0|38|0x010101", 90, 20, 301, 380, 487}
services["曲阜孔庙"] = {0x26252d, "10|4|0x060507,2|23|0x111014,9|38|0x1b1a20,10|53|0x121116,10|63|0x121116,-2|63|0x0f0e12",90, 20, 301, 380, 487}


function FindService(serviceName)
	local data = services[serviceName]
	if data then
		return findMultiColorInRegionFuzzy(table.unpack(data))
	else
		return -1,-1
	end
end

-- local x,y=FindService("青岛栈桥")
-- dialog(string.format("x:%d,y:%d", x,y))
