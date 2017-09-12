create trigger insert_ship
on 在泊船只
after insert
as
if 
(select 泊位.状态 from 泊位,inserted where 泊位.泊位编号 = inserted.泊位编号) = 'true'
begin
	declare @ipnum char(6),@imnum char(6),@isnum char(6)
	select @ipnum = 泊位编号 from inserted
	update 泊位 set 状态 = 'false' where 泊位编号 = @ipnum 
	select @imnum = 管理员.员工编号 from 管理员,泊位,inserted where 管理员.登录状态 = 'true' and inserted.泊位编号 = 泊位.泊位编号 and 泊位.港口编号 = 管理员.港口编号
	select @isnum = 船只编号 from inserted
	insert 时刻表 values(@isnum,@imnum,@ipnum,GETDATE(),NULL)
	print'成功插入数据，并已同步修改时刻表！'
end
else
begin
	print'数据有误！'
	rollback transaction
end