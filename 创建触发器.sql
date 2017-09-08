create trigger check_update_ship
on 船只
after insert
as
if 
(select 泊位.状态 from 泊位,inserted where 泊位.泊位编号 = inserted.泊位编号) = 'true'
begin
	declare @插入泊位编号 char(6)
	select @插入泊位编号 = 泊位编号 from inserted
	update 泊位 set 状态 = 'false' where 泊位编号 = @插入泊位编号 
	print'成功插入数据！'
end
else
begin
	print'数据有误！'
	rollback transaction
end