create trigger delete_ship
on 在泊船只
after delete
as
begin
	declare @ipnum char(6),@imnum char(6),@isnum char(6)
	select @ipnum = 泊位编号 from deleted
	update 泊位 set 状态 = 'true' where 泊位编号 = @ipnum 
	select @imnum = 管理员.员工编号 from 管理员,泊位,deleted where 管理员.登录状态 = 'true' and deleted.泊位编号 = 泊位.泊位编号 and 泊位.港口编号 = 管理员.港口编号
	select @isnum = 船只编号 from deleted
	insert 时刻表 values(@isnum,@imnum,@ipnum,NULL,GETDATE())
	print'成功删除数据，并已同步修改时刻表！'
end
