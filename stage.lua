--界面
require("TSLib")

function 网络已断开()
if (isColor( 529,  301, 0x72152e, 85) and 
	isColor( 484,  301, 0xfdfbfc, 85) and 
	isColor( 432,  302, 0x360b17, 85) and 
	isColor( 337,  299, 0x304e63, 85) and 
	isColor( 313,  303, 0xedeff1, 85) and 
	isColor( 243,  193, 0xf7f8f8, 85)) then
	return 529,301
end
return -1,-1
end

function 适龄提示()
return findMultiColorInRegionFuzzy( 0x183850, "-2|-12|0x285478,-2|-82|0x202f63,4|-209|0xadb5ee,-6|-244|0xf2f3f8,-3|-254|0xf6f7fa,-2|-283|0xfcfdfd", 90, 431, 380, 476, 763)
end

function 取消任务()
return findMultiColorInRegionFuzzy( 0xfafbfc, "-1|0|0xf7f8fa,7|2|0xfafbfc,20|0|0xfafbfc,20|-3|0xfcfcfd,27|0|0xfefeff,41|0|0xfbfcfd", 90, 14, 187, 136, 309)
end

function 再来一次()
return findMultiColorInRegionFuzzy( 0xf9fafc, "2|0|0xffffff,5|0|0xf9fafc,-2|7|0xf8fafb,10|7|0xf8f9fb,20|4|0xffffff,20|1|0xf8f9fb,61|-1|0xf1f4f7", 90, 326, 675, 463, 712)
end

function 葫芦太多了()
return findMultiColorInRegionFuzzy( 0xffdddd, "21|-12|0x117920,50|-1|0xe5ef4b,24|54|0xff7a22,36|65|0xeec95b,52|56|0xffddd6,56|105|0xf8fafc,17|109|0xf8f9fc,7|109|0xf9fafc", 90, 14, 472, 158, 624)
end

--登录开始
function 登录页面()
return findMultiColorInRegionFuzzy( 0xeaf6fc, "33|3|0x1497db,95|3|0xd7c863,128|3|0xfff0e5,197|4|0x9fb0ba", 90, 36, 710, 476, 791)
end

function 已登录账号()
return findMultiColorInRegionFuzzy( 0xffffff, "9|11|0xffffff,6|13|0x1b3a46,-21|199|0xd7c863,-6|204|0xff9eaf", 90, 165, 534, 235, 768)
end

function 选择登录角色()
return findMultiColorInRegionFuzzy( 0xdae0e6, "37|0|0x384488,-9|78|0xf8f8f9,-1|157|0xedefef,44|197|0x386c90", 90, 382, 496, 475, 749)
end
function 确定删除账号()
return findMultiColorInRegionFuzzy( 0xfdfcfc, "-1|-34|0x711730,-5|-152|0x2d4a5f,106|-206|0xfdfdfd,-4|-189|0xffffff", 90, 151, 217, 298, 524)
end
function 新建或选择角色()
return findMultiColorInRegionFuzzy( 0x59c618, "-11|17|0xb8b0d9,-11|253|0xff9dae,-25|253|0xd3c462,-9|259|0xffd2da", 90, 174, 472, 226, 770)
end

--废弃
function 输入账号密码()
return findMultiColorInRegionFuzzy( 0xb0b8c8, "4|19|0x31424b,7|28|0x688490,8|39|0x32444d", 90, 0, 159, 475, 620)
end
function 输入账号密码1()
return findMultiColorInRegionFuzzy( 0x31434c, "1|14|0x608088,-109|4|0x73142d,-160|1|0x4cb7f0,68|77|0x285078,84|91|0x68a8c7", 90, 1, 408, 468, 642)
end

--废弃
function 选择服务器和角色页面()
return findMultiColorInRegionFuzzy( 0x2e4a65, "25|2|0x203c58,52|5|0xffffff,68|5|0x500f1e,113|8|0x24353d,165|15|0x202c5a,56|79|0xe6dddf,44|85|0x5f182b", 90, 279, 40, 477, 162)
end
function 服务器选择()
return findMultiColorInRegionFuzzy( 0xffffff, "51|-2|0xeeeef5,51|39|0x384088,8|271|0x24353d,51|310|0x2e547b", 90, 397, 419, 472, 770)
end
function 没有选择服务器()
return findMultiColorInRegionFuzzy( 0xffffff, "-7|2|0xffffff,-1|31|0xfefefe,8|17|0x203c58,7|77|0x203c58,-14|79|0x2c4964", 90, 318, 43, 378, 180)
end
function 观看录像()
return findMultiColorInRegionFuzzy( 0x183850, "-1|-12|0x285378,-6|-88|0x182328,1|-146|0xe8e9f0,-1|-156|0xeef0f4,-3|-175|0xfefefe,-2|-185|0xffffff,-4|-200|0xfefefe", 90, 373, 352, 438, 583)
end
function 确定进入口袋版()
return  findMultiColorInRegionFuzzy( 0x6f142d, "3|-9|0xf8f4f5,3|-184|0x2e4b60,110|-201|0xf5f6f6,121|-167|0xf6f6f7,109|-144|0xedeeef", 90, 148, 219, 299, 563)
end

--登录结束

--师门任务开始

function 主页1()
return findMultiColorInRegionFuzzy( 0xfffec4, "-7|0|0xffed5f,-7|-23|0x7edc90,22|-21|0x135c48,25|-3|0xc5270a,33|4|0x6ebbae", 90, 7, 723, 77, 792)
end
function 任务界面()
return findMultiColorInRegionFuzzy( 0x506ea1, "1|10|0x4b699e,15|1|0x5472a4,21|-5|0x5371a4,32|11|0x4d6b9f,24|5|0xb6c7eb", 90, 112, 130, 164, 653)
end
function 领取任务()
--local x,y = findMultiColorInRegionFuzzy( 0xfefeff, "-58|3|0xfefefe,-179|-3|0xfafbfc,-315|-7|0xfbfbfd,-371|-2|0xf5f7f9", 90, 14, 670, 451, 712)
--	local x,y = findMultiColorInRegionFuzzy( 0xf3f5f8, "0|1|0xfdfefe,0|8|0xf6f8fa,16|2|0xf5f7f9,20|8|0xfcfdfe,26|10|0xf9fafb,62|10|0xf6f8fa,56|1|0xfefefe", 90, 337, 680, 450, 709)
--	return x,y
if (isColor( 366,  689, 0xfdfefe, 85) and 
isColor( 367,  696, 0xf7f8fb, 85) and 
isColor( 382,  693, 0xfafbfc, 85) and 
isColor( 383,  696, 0xf8f9fb, 85) and 
isColor( 393,  698, 0xf8f9fb, 85) and 
isColor( 405,  712, 0x4ebdde, 85) and 
isColor( 323,  687, 0x5c7991, 85)) then
	return 366,  689
end
return -1,-1
end
function 师门任务已开始()
return findMultiColorInRegionFuzzy( 0xc6301e, "-11|1|0xfffcc4,22|-22|0xe83535,22|-30|0xffffff,30|-29|0xffffff,34|-29|0xffffff", 90, 172, 724, 237, 791)
end


-----寻物开始
function 寻物取消()
return findMultiColorInRegionFuzzy( 0xf2f4f8, "4|0|0xfafbfc,4|14|0xedf0f6,0|11|0xf3f6f9,1|7|0xf5f7fa,4|3|0xedf0f6,10|10|0xf6f8fb,12|1|0xf6f8fa,12|13|0xfafbfc", 90, 36, 674, 115, 712)
end
function 当前任务()
return findMultiColorInRegionFuzzy( 0x9f4242, "-12|-54|0x9f4242,31|-87|0xffffff,41|-86|0xffffff,2|93|0xfafbfc,9|95|0xfafcfc", 90, 5, 59, 117, 265)
end
--寻物结束

---巡逻开始
function 巡逻()
return findMultiColorInRegionFuzzy( 0xfcfcfd, "-12|7|0xf6f8fa,-6|9|0xfbfcfd,-24|8|0xf6f8fb,-152|1|0xf6f7fa,-172|6|0xfafbfc", 90, 218, 680, 420, 707)
end
--巡逻结束

--师门任务结束


--废弃
function 主页()
return findMultiColorInRegionFuzzy( 0xc03425, "19|3|0xf4ec3f,-3|21|0x1d7735,9|42|0xe2eaf0,33|42|0xe7eff4", 90, 91, 731, 148, 796)
end



--师门任务开始
function 师门任务()
return findMultiColorInRegionFuzzy( 0x48679b, "1|35|0x6782bb,29|67|0x617db7,144|45|0x5774b1,166|39|0x5774b1,65|62|0xb6c7eb,111|63|0xb6c7eb,109|59|0xb6c7eb", 90, 119, 133, 289, 688)
end

function 已存在师门任务()
return findMultiColorInRegionFuzzy( 0xffffff, "5|4|0xffffff,26|4|0xffffff,39|4|0xffffff,67|4|0xffffff,-19|25|0xa04141", 90, 13,  58, 164,  107)
end

function 一倍速度()
return findMultiColorInRegionFuzzy( 0xf8c967, "25|-1|0xe27d2b,36|-8|0xcc7531,31|3|0xf8c662,32|16|0xdf7c2c,31|21|0x000000,29|27|0x5372a8", 90, 1, 325, 78, 401)
end
function 二倍速度()
return findMultiColorInRegionFuzzy( 0xf9cb69, "21|-8|0xfad374,39|11|0xf7c05b,37|15|0xe78c35,23|24|0x6284bf,17|25|0x5473a9", 90, 1, 325, 78, 401)
end

function 下方图标()
return findMultiColorInRegionFuzzy( 0xeb4213, "18|-33|0x6ace7d,38|-34|0xf8b346,87|-27|0xf94c41,81|-6|0x4ef03d", 90, 5, 719, 155, 793)
end

function 师门前往()
return findMultiColorInRegionFuzzy( 0xf9fafc, "7|0|0xebeef4,6|1|0xfbfbfd,-3|7|0xfafbfc,-3|12|0xf5f7fa,6|6|0xebeff4,9|6|0xe1e6ef,9|14|0xedf0f6,7|14|0xe9edf4", 90, 354, 677, 433, 712)
end

function 问答()
return findMultiColorInRegionFuzzy( 0xfff0cf, "-11|0|0xde7827,-46|5|0xabc6e5,-130|4|0x8197bd,-163|1|0xfbfcfd,-175|2|0xf6f8fa,-190|1|0xffffff,-190|5|0xfefeff,-193|5|0xffffff", 90, 207, 243, 454, 278)
end
function 互通幻境()
return findMultiColorInRegionFuzzy( 0xffedc8, "-10|-1|0xdd7827,-47|1|0x346298,-57|-3|0xb7c6e6,-155|-3|0x436090,-195|0|0xfdfdfe,-195|-2|0xfefefe,-196|4|0xffffff,-198|5|0xffffff", 90, 193, 97, 470, 136)
end
function 副本()
	if (isColor( 221,  116, 0xffffff, 85) and 
		isColor( 230,  116, 0xffffff, 85) and 
		isColor( 220,  121, 0xffffff, 85) and 
		isColor( 236,  126, 0xf8f9fb, 85) and 
		isColor( 252,  119, 0xffffff, 85) and 
		isColor( 243,  127, 0xfafbfc, 85) and 
		isColor( 319,  125, 0x8299be, 85) and 
		isColor( 362,  129, 0xa1badb, 85) and 
		isColor( 428,  127, 0xde7b27, 85) and 
		isColor( 443,  127, 0xffecc5, 85)) then
		return 443,  127
	end
	return -1,-1
end
function 队伍()
return findMultiColorInRegionFuzzy( 0xffefd0, "-13|0|0xdd7727,-187|-1|0x476597,-245|-10|0xffffff,-240|-10|0xffffff,-242|-7|0xfcfdfd,-240|-4|0xffffff,-245|-4|0xfafbfc,-239|2|0xffffff", 90, 199, 23, 470, 71)
end
function 连接失败()
return findMultiColorInRegionFuzzy( 0x71152e, "3|-17|0xfaf7f8,3|-22|0xfdfcfc,-5|-29|0xfefefe,83|-9|0xf8f8f8,76|-9|0xf8f8f8,83|5|0xfdfdfd", 90, 82, 421, 226, 627)
end
--师门任务结束

-- 寻物开始
function 师门任务寻物()
return findMultiColorInRegionFuzzy( 0xffffff, "39|-1|0xfbfbfc,87|-1|0x3e5a8a,131|-1|0x9eb3dc,196|-1|0xd76c23,200|2|0xfffaf1", 90, 118, 130, 166, 646)
end

function 寻物我来整理()
return findMultiColorInRegionFuzzy( 0xf3f5f8, "-18|-3|0xffffff,-34|-6|0xfefeff,-127|-4|0xfafbfd,-39|-6|0xfefeff,-162|-7|0xfcfdfe", 90, 228, 675, 436, 708)
end

function 寻物遇到神秘人()
--local x,y = findMultiColorInRegionFuzzy( 0xf6f8fa, "20|1|0xf4f6fa,35|3|0xf6f8fa,75|5|0xeef1f6,81|-4|0xfafbfd", 90, 14, 670, 451, 712)
local x,y = findMultiColorInRegionFuzzy( 0xfdfefe, "-8|-5|0xffffff,-25|-2|0xfcfdfe,-156|-3|0xf4f6f9,-167|-3|0xf5f7fa,-184|-9|0xfcfcfd,-195|1|0xf7f8fb,-195|36|0xb84343,-193|42|0xb9b9b9", 90, 184, 681, 465, 749)
return x,y
end


function 寻物()
return findMultiColorInRegionFuzzy( 0xfefeff, "-3|-8|0xf0f3f8,10|-8|0xf0f3f8,-7|-210|0xf8f9fb,7|-212|0xeff2f6,-10|-213|0xfefeff,2|-211|0xffffff,0|-209|0xffffff,8|-209|0x496799", 90, 170, 269, 309, 509)
end

function 再来一次()
return findMultiColorInRegionFuzzy( 0xffffff, "6|7|0xfefefe,18|4|0xffffff,56|5|0xfcfcfd,54|-4|0xfafbfc", 90, 341, 679, 459, 707)
end
function 少侠好眼力()
return findMultiColorInRegionFuzzy( 0xfefefe, "-41|-4|0xfbfcfd,-59|-3|0xfefeff,-99|0|0xfefefe", 90, 31,  588, 343,  622)
end

--寻物结束

function 师门任务完成()
local x,y = findMultiColorInRegionFuzzy( 0xffffff, "10|-4|0xe60515,28|-10|0x506ea1,41|-12|0x5674a6,62|-6|0x5b77a9,59|-16|0x4b6a9e", 90, 17, 130, 163, 662)
return x, y
end
function 当前任务结束()
local x,y = findMultiColorInRegionFuzzy( 0xb9b9b9, "19|-1|0xb9b9b9,-32|13|0x742f2f,-26|38|0x742f2f,41|0|0xb9b9b9", 90, 44, 70, 120, 120)
return x,y
end

function 获得一个葫芦()
return findMultiColorInRegionFuzzy( 0x6484c1, "-16|-2|0xffffff,-58|-14|0x6b8ece,-51|-61|0xfcfcfc,-231|-95|0xfcfcfc,-204|-15|0x6c8fcf,-193|-3|0xffffff", 90, 85,  579, 402,  702)
end

-- 抓鬼开始
function 抓怪我准备好了()
local x,y=findMultiColorInRegionFuzzy( 0xfafbfc, "7|9|0xf8f9fb,21|0|0xfcfdfe,34|6|0xfefefe,56|-4|0xfbfcfd", 90, 321, 654, 474, 737)
return x,y
end

function 拼图()
	--return findMultiColorInRegionFuzzy( 0xffffff, "-3|10|0xffffff,8|4|0xffffff,36|-3|0xfefefe,21|8|0xffffff,57|0|0x436090,123|3|0xa9bce2,228|-2|0xdd7727,238|-2|0xfff0d0", 90, 209, 135, 472, 165)
	if (isColor( 223,  146, 0xffffff, 85) and 
	isColor( 220,  157, 0xffffff, 85) and 
	isColor( 232,  146, 0xfefeff, 85) and 
	isColor( 230,  151, 0xffffff, 85) and 
	isColor( 244,  146, 0xffffff, 85) and 
	isColor( 258,  152, 0xfefeff, 85) and 
	isColor( 289,  150, 0x456293, 85) and 
	isColor( 450,  147, 0xde7927, 85) and 
	isColor( 462,  147, 0xffeeca, 85)) then
		return 223,  146
	end
	return -1,-1
end
function 抓到了交给师傅()
return findMultiColorInRegionFuzzy( 0x175c31, "30|3|0x641c1a,83|6|0xa27f3d,169|8|0x5e8610,194|-13|0xb99748", 90, 82, 719, 308, 795)
end
--抓鬼结束
function 遇见好友()
return findMultiColorInRegionFuzzy( 0xffffff, "-34|-7|0xfafbfc,-27|-10|0xf9fafc,22|-4|0xfeffff,40|-6|0xfbfcfd", 90, 329, 667, 466, 713)
end

--援助开始
function 这家伙好生厉害()
return findMultiColorInRegionFuzzy( 0xf4f7fa, "-8|-5|0xfcfcfe,-62|-5|0xfafbfc,-78|-8|0xfdfefe", 90, 25,  583, 264,  620)
end
function 援助结束()
return findMultiColorInRegionFuzzy( 0xf8fafc, "0|2|0xf7f9fc,8|-6|0xfafbfb,26|-2|0xfcfcfd,57|7|0xfefeff,351|-330|0xb8b8b8,377|-329|0xb8b8b8,378|-329|0xb8b8b8", 90, 1, 227, 424, 593)
end
--援助结束

function 战斗中()
return findMultiColorInRegionFuzzy( 0xe9f1ff, "5|11|0x6aa9df,12|14|0x596f96,20|1|0x5d749e,11|-1|0xe8f0fe,11|-21|0x000000", 90, 438, 375, 478, 434)
end
--抓鬼开始
function 当前任务抓鬼()
return findMultiColorInRegionFuzzy( 0xa04141, "8|0|0xa04141,4|-4|0xa04141,5|13|0xa04141,0|7|0xa04141,8|5|0xa04141,1|15|0xa04141,9|14|0xa04141,13|7|0xa04141", 90, 0, 81, 56, 176)
end
function 抓鬼任务()
	return findMultiColorInRegionFuzzy( 0x4c6a9e, "2|4|0x4c6b9f,-10|17|0xb6c7eb,-15|1|0xb6c7eb,-7|-7|0x4c6a9f,-19|-7|0x47669b,-19|5|0xb5c6eb,-22|5|0x47669b,-29|-4|0x47669b", 90, 112, 133, 183, 650)
end
function 帮忙抓鬼()
--	return findMultiColorInRegionFuzzy( 0xfdfdfe, "0|4|0xfdfefe,-23|4|0xfbfcfd,-36|0|0xf9fafc,-54|7|0xfdfdfe,-57|-3|0xfefefe,-151|7|0xfcfcfd", 90, 257, 679, 438, 711)
if (isColor( 381,  692, 0xf1f4f8, 85) and 
	isColor( 383,  700, 0xe8edf3, 85) and 
	isColor( 405,  691, 0xf5f7fa, 85) and 
	isColor( 402,  696, 0xf8fafb, 85) and 
	isColor( 412,  694, 0xf3f6f9, 85) and 
	isColor( 424,  691, 0xfcfcfd, 85) and 
	isColor( 402,  712, 0x4ebcdf, 85) and 
	isColor( 323,  695, 0x5f789a, 85) and 
	isColor( 433,  674, 0x5d7f96, 85)) then
	return 381,692
	end
	return -1,-1
end
function 前往()
--	return findMultiColorInRegionFuzzy( 0xfefefe, "3|-6|0xeff2f6,-27|-1|0xfafbfc,-154|-4|0xf6f7fa,-162|-1|0xf8f9fb,-174|1|0xfafbfc", 90, 218, 680, 418, 709)
	if (isColor( 382,  695, 0xf5f7fa, 85) and 
	isColor( 385,  689, 0xf9fafc, 85) and 
	isColor( 387,  700, 0xf5f7fa, 85) and 
	isColor( 382,  703, 0xf4f7fa, 85) and 
	isColor( 409,  697, 0xfefefe, 85) and 
	isColor( 413,  691, 0xeff2f7, 85) and 
	isColor( 409,  689, 0xf0f3f7, 85) and 
	isColor( 409,  702, 0xf5f7fa, 85) and 
	isColor( 400,  712, 0x4ebcdf, 85) and 
	isColor( 433,  675, 0x93b3d5, 85)) then
		return 382,695
	end
	return -1,-1
end
function 抓鬼已开始()
return findMultiColorInRegionFuzzy( 0xffffff, "19|-3|0xffffff,-67|21|0xa04141,-79|38|0xa04141,-30|16|0xffffff,-46|16|0xfefeff", 90, 17, 58, 153, 124)
end
function 找东西()
return findMultiColorInRegionFuzzy( 0xffffff, "20|-4|0xffffff,48|-5|0xffffff,76|-6|0x446191,144|-5|0xbdcdef,222|-2|0xdd7827,236|-2|0xffeecb", 90, 155, 98, 472, 144)
end

function 挑战()
return findMultiColorInRegionFuzzy( 0xfdfefe, "-10|-3|0xf7f9fb,-9|-8|0xeff1f6,-22|-7|0xeef1f6,-28|-6|0xecf0f5,-168|-5|0xfcfcfd,-179|-6|0xffffff,-186|-6|0xf7f9fb,-177|-1|0xfcfcfd", 90, 217, 681, 419, 707)
end

function 继续()
--return findMultiColorInRegionFuzzy( 0xf9fafc, "8|1|0xffffff,1|7|0xf4f6f9,25|-5|0xfefeff,25|-3|0xf9fafb,25|5|0xfdfdfe,24|7|0xf7f8fb", 90, 363, 677, 426, 711)
	if (isColor( 392,  694, 0xffffff, 85) and 
	isColor( 392,  695, 0xffffff, 85) and 
	isColor( 409,  688, 0xf9fafc, 85) and 
	isColor( 409,  699, 0xfdfdfe, 85) and 
	isColor( 400,  698, 0xfeffff, 85) and 
	isColor( 384,  712, 0x4fbddf, 85) and 
	isColor( 323,  692, 0x627897, 85) and 
	isColor( 441,  675, 0x97b5d5, 85) and 
	isColor( 385,  701, 0xf4f6f9, 85)) then
		return 392,694
	end
	return -1,-1
end
--抓鬼结束

function 进入封妖()
local x,y = findMultiColorInRegionFuzzy( 0x26bcac, "-9|6|0xf0f2f5,-10|16|0xf6f7f9,-2|17|0xe9ecf0,4|12|0xfafbfc,14|10|0xf7f8fa,16|17|0xd8dee5,5|7|0xfdfefe", 90, 84, 116, 464, 557)
if x == -1 then
	x,y = findMultiColorInRegionFuzzy( 0xedeff3, "0|8|0xfbfcfd,-2|12|0xf3f4f7,8|4|0xf3f5f7,15|3|0xf8f9fa,21|2|0xf1f3f6,23|6|0xf7f8fa,13|-4|0x219f96", 90, 0, 0, 479, 799)
end
y = y - 14
return x, y
end

function 封妖()
local x,y = findMultiColorInRegionFuzzy( 0xffffff, "-27|-2|0xfefeff,-13|4|0xffffff,-10|14|0x4a689c,84|3|0xd2e0ff,129|6|0x356097,194|6|0xdb7226,207|7|0xffeecb", 90, 205, 77, 473, 120)
return x, y+270
end

function 封妖结束()
return findMultiColorInRegionFuzzy( 0x47669b, "-1|0|0x47669b,-4|5|0x5a76a8,-4|7|0x5976a8,-3|10|0x4a689d,-1|12|0x48679b,0|12|0x48679c,3|8|0x47669b,3|6|0x47669b,3|4|0x47669b", 90, 2, 464, 136, 496)
end

function 更多展开()
return findMultiColorInRegionFuzzy( 0xc57f0c, "-30|8|0x481e01,-5|28|0xf5fbf6,-4|-62|0x278ca2,-7|-55|0xf8fafd,-33|-91|0x161c20,-30|-120|0xc8d6f3", 90, 396, 373, 477, 561)
end
function 集市()
return findMultiColorInRegionFuzzy( 0x9c5b1a, "0|7|0x7c3201,20|2|0x863f09,28|-12|0xfce281,88|-57|0xfdfdfe,63|-53|0xffffff,141|-49|0xffffff,302|-43|0xde7927", 90, 114, 26, 474, 120)
end
function 宝库()
return findMultiColorInRegionFuzzy( 0x7e3503, "1|3|0x7e3503,19|3|0x7d3302,28|-6|0xfcde76,153|-54|0xfdfdfe,226|-54|0xffffff,393|-42|0xdd7827", 90, 5, 25, 475, 116)
end
function 抓鬼葫芦()
return findMultiColorInRegionFuzzy( 0x375488, "1|0|0x435f92,1|5|0x385589,17|12|0x3f5c8f,26|9|0x3a578b,-35|42|0x2f692a,-41|74|0xedf04f", 90, 9, 174, 478, 640)
end
function 师门葫芦()
return findMultiColorInRegionFuzzy( 0x3b588b, "0|-3|0x3b588b,0|5|0x3b588b,0|9|0x425f91,21|-6|0x375488,27|-6|0x375588,-52|39|0x2d6828,-51|65|0x77431d", 90, 9, 174, 478, 640)
end
function 紫葫芦()
return findMultiColorInRegionFuzzy( 0xb74fd8, "7|-8|0xf19a9d,17|-9|0x82d2fb,27|-17|0xb86ecc,7|17|0x4c5756,4|16|0xeb858c", 90, 9, 174, 478, 640)
end
function 金葫芦()
return findMultiColorInRegionFuzzy( 0xbca149, "-8|-8|0xeedf35,13|-15|0xffda22,-21|15|0xc06323,-8|11|0x763706,0|-28|0xa4764a", 90, 9, 174, 478, 640)
end

function 确定出售()
return findMultiColorInRegionFuzzy( 0xfefeff, "1|9|0xfcfdfe,10|11|0xe6ebf4,19|8|0xf4f6fa,24|0|0xf9fafc,29|15|0xf5f8fb,42|-3|0x4262a1,-19|15|0x4774b1", 90, 257, 438, 428, 533)
end
function 不可售()
local x,y = findMultiColorInRegionFuzzy( 0xfefefe, "30|10|0xffffff,37|9|0xffffff,48|11|0xffffff,70|14|0xfefefe,89|0|0xfcfcfd,97|9|0xffffff,106|9|0xfcfcfd", 90, 39, 179, 331, 575)
if x == -1 then
	x,y = findMultiColorInRegionFuzzy( 0xfbfcfc, "4|0|0xfbfbfc,64|7|0xffffff,64|15|0xffffff,193|14|0xffffff,224|0|0xffffff,348|9|0x334d7c", 90, 223, 175, 573, 325)
end
return x,y
end

function 充值了解详情()
local x,y = findMultiColorInRegionFuzzy( 0xf8f9fb, "-3|7|0xf9fafc,2|10|0xf9fafc,37|8|0xf9fafc,44|6|0xfefeff,60|6|0xf2f4f8,73|9|0x6481ad,-24|10|0x6381ad,23|-14|0x95b4d6,-44|3|0x61789e", 90, 308, 664, 474, 718)
if x ~= -1 then
	return 233, 689
end
return -1,-1
end
function 经验超过上限知道了()
return findMultiColorInRegionFuzzy( 0xfbfcfd, "12|0|0xfafbfc,6|5|0xeff2f7,9|3|0xf6f8fa,6|14|0xe9edf4,3|14|0xf0f3f8,-331|-133|0xfc6325,-331|-143|0xee90b3,-336|-143|0x70c913", 90, 21, 483, 425, 712)
end
function 下载互通版资源()
return findMultiColorInRegionFuzzy( 0x183850, "-9|0|0x305b80,-186|5|0xf9fafb,-303|-4|0xecedf2,-297|3|0xe6e7ec,-303|8|0xced1df,-267|6|0xfdfdfe,-261|6|0xfdfdfe", 90, 330, 90, 668, 136)
end
function 正在做任务()
return findMultiColorInRegionFuzzy( 0xe2b05c, "-1|-12|0xd8473d,-4|-34|0x119d34,30|-32|0xba2c0c,42|-18|0xd40a0a,52|-39|0xf20e0e,59|-20|0x16a544", 90, 173, 727, 241, 790)
end
function 所有妖怪均已封印()
return findMultiColorInRegionFuzzy( 0xdfda3c, "16|4|0xe3dc29,40|0|0xe4dc1e,89|1|0xe3dc25,137|2|0xe1db32,161|5|0xe6dd16,174|9|0xe6dd15", 90, 135, 377, 332, 414)
end
function 账号管理()
return findMultiColorInRegionFuzzy( 0x426aa5, "-6|-9|0xc4d1ef,-21|-30|0x5579ae,-158|-27|0xf2e7c6,-168|14|0xe8ce7e,-147|68|0xfbfcfb,-4|60|0xfcfcfb,14|71|0xf5f5f2", 90, 178, 334, 441, 457)
end
function 切换角色()
return findMultiColorInRegionFuzzy( 0xfbfcfd, "15|3|0xfcfcfd,-27|-6|0x4363a2,67|-224|0xffffff,125|-221|0xfdfdfe,174|-224|0x42608f,281|-228|0xde7927,287|-230|0xfff0d0,54|-62|0x466191,66|-96|0x486393", 90, 29, 233, 441, 529)
end
function 退出登录确认()
return findMultiColorInRegionFuzzy( 0xffffff, "-7|1|0xf6f8fb,-16|7|0xfbfcfd,-27|6|0xffffff,-34|5|0x426cac,-62|-2|0x496086,-195|-1|0xfefeff,-235|-4|0x425679", 90, 76, 310, 385, 434)
end
function 空页面()
if (isColor( 197,  766, 0xd63825, 85) and 
	isColor( 201,  754, 0xc1862b, 85) and 
	isColor( 108,  742, 0xc23525, 85) and 
	isColor( 102,  759, 0x1da74c, 85) and 
	isColor( 238,  395, 0x5b80bd, 85) and 
	isColor(  21,   61, 0x425f8e, 85) and 
	isColor( 432,   62, 0x425f8e, 85)) then
	return 197,  766
end
return -1,-1
end
function 上线确认()
return findMultiColorInRegionFuzzy( 0xf7f1f3, "2|-53|0x72162f,2|-83|0x360c18,4|-134|0x1e2f3a,4|-179|0x304e63,1|-228|0xf8f9fa", 90, 155, 226, 280, 575)
end
function 将军令()
return findMultiColorInRegionFuzzy( 0xf1e9eb, "9|-13|0x73162f,4|54|0xf9f6f7,13|171|0x751730,3|185|0xf9f5f6,155|99|0xe10303,187|9|0xfbfbfb,193|9|0xfbfbfb", 90, 181, 219, 414, 575)
end
function 妙笔丹青()
return findMultiColorInRegionFuzzy( 0xdc7627, "9|2|0xffefcc,-48|7|0x33669c,-76|-5|0xcddbf6,-181|0|0xffffff,-211|5|0xffffff", 90, 192, 18, 461, 69)
end

function 修行()
return findMultiColorInRegionFuzzy( 0xffefce, "-13|0|0xdd7727,-206|-7|0xffffff,-199|-2|0xffffff,-203|4|0xfefefe,-205|5|0xf7f9fb,-241|-3|0xf8f9fb", 90, 208, 30, 473, 63)
end

function 充值()
if (isColor( 431,  146, 0xde7a27, 85) and 
	isColor( 226,  149, 0xffffff, 85) and 
	isColor( 180,  149, 0x446292, 85) and 
	isColor(  77,  175, 0x604068, 85) and 
	isColor(  72,  255, 0xe26363, 85) and 
	isColor(  81,  328, 0xf6a3db, 85) and 
	isColor( 339,  319, 0xfbd273, 85)) then
	return 466,144
end
return -1,-1
end
function 寻找失败()
	return findMultiColorInRegionFuzzy( 0xf7f8fa, "28|2|0xffffff,339|4|0x334d7c,293|21|0x90a7d2,-38|4|0xc5d7f4,-24|-11|0x52709b", 90, 5, 343, 438, 457)
end

function 官职任务()
if (isColor( 105,  697, 0xeef1f6, 85) and 
	isColor( 153,  656, 0x18ea22, 85) and 
	isColor( 117,  540, 0x5d0a22, 85) and 
	isColor(  85,  498, 0xf1cc74, 85) and 
	isColor(  92,  457, 0x4cef89, 85) and 
	isColor(  82,  425, 0xfc0112, 85)) then
	return 105, 697
end
return -1,-1
end
function 重新打开应用()
if (isColor( 198,  276, 0x009688, 85) and 
	isColor( 187,  217, 0x212121, 85) and 
	isColor( 248,  246, 0xffffff, 85) and 
	isColor( 293,  279, 0x212121, 85) and 
	isColor( 304,  279, 0x212121, 85) and 
	isColor( 298,  273, 0x212121, 85) and 
	isColor( 295,  282, 0x212121, 85)) then
	return 290,  280
end
return -1,-1
end


function FindStageUntil(fn, cnt)
	for i=1,cnt,1 do
		mSleep(635)
		local x,y = fn()
		if x > -1 then
			return true, x, y
		end
	end
	return false, -1, -1
end

function FindStageNotUntil(fn, cnt)
	for i=1,cnt,1 do
		mSleep(335)
		local x,y = fn()
		if x == -1 then
			return true
		end
	end
	return false
end

function FindComposeStageUntil(arryfn, cnt)
	for i=1,cnt,1 do
		mSleep(635)
		for k = 1, #arryfn, 1 do

			local fn = arryfn[k]
			local x,y = fn()
			if x > -1 then
				return x,y,k
			end
			--toast("循环第"..tostring(k).."个函数，结果x:"..x..",y:"..y)
		end

	end
	return -1,-1,-1
end

function Compose(arryfn)
	for i = 1, #arryfn, 1 do
		--mSleep(1)
		local fn = arryfn[i]
		local x, y = fn()
		if x ~= -1 then
			return x,y,i
		end
	end
	local kk = {问答,互通幻境,网络已断开,副本,队伍,连接失败,下载互通版资源,空页面,上线确认,妙笔丹青,修行}
	for i = 1, #kk, 1 do
		local fn = kk[i]
		local x, y = fn()
		if x ~= -1 then
			toast("其他函数:"..i)
			mTap({x, y})
			return -1,-1,-1
		end
	end
	return -1,-1,-1
end