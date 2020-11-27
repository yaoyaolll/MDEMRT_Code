Description	Resource	Path	Location	Type
#16002-D build attribute vendor section TI missing in "../lib/IQmath.lib<IQ10atan2.obj>": compatibility cannot be determined	multi_dimen_ECB		 	C/C++ Problem
此warning是旧版本编译lib，与6.0不兼容，将warning index屏蔽

备注：
1.模式采集数据时，电流偏大一般是继电器代码存在问题。
2.一对正反序列，回波数据基本为水平线可能是没有做反向。

多维事件板FLASH程序

程序修改：主要修改了cmd文件的空间分配，所有函数分配进行了变化，具体参见文件夹下的多维事件板函数分配表。FLASH版本通过PULSE、扫频、上传参数表等功能。
文件位置：cmd文件
修改人：刘垚
时间：20200831

程序修改：B3频EchoStorAddr增加数量有问题，第100行，已删去。
文件位置：HRT1T22FModeTop.c
修改人：刘垚
时间：2020年10月20日

程序修改：3D6F模式NREPT for 3E or 4F or 5F固定为8 4 2，将5F采集重复次数固定为2
文件位置：P3D6FModeTop.c
修改人：刘垚
时间：2020年10月22日

程序修改：HRT1T22F模式NREPT for B3 B4 B5 B6固定为2 2 2 4
文件位置：HRT1T22FModeTop.c
修改人：刘垚
时间：2020年10月22日

程序修改：3D6F、PPLOIL模式修复完成
文件位置：P3D6FModeTop.c、PPLOIL6FModeTop.c
修改人：刘垚
时间：2020年11月18日

程序修改：PPHOIL6F_2模式中部分变量参数缺失，已修复
文件位置：PPHOIL6F_2ModeTop.c
修改人：刘垚
时间：2020年11月20日

程序修改：ST2DModeTop、DFT1T2DModeTop模式中存在部分变量赋值错误，已修复
文件位置：DFT1T2DModeTop.c、T2DModeTop.c
修改人：刘垚
时间：2020年11月27日
