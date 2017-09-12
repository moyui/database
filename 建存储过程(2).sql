create proc find_harbour @num char(6)
	as
	select 港口.港口编号,时刻表.船只编号,入港时间,出港时间 from 时刻表,港口,泊位
	where 时刻表.船只编号 = @num and 时刻表.泊位编号 = 泊位.泊位编号 and 泊位.港口编号 = 港口.港口编号