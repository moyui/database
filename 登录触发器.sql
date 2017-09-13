create trigger update_employee
on 管理员
instead of update
as
if(select 登录状态 from inserted) = 'true'
begin
	begin tran
	update 管理员 set 登录状态 = 'false' from 管理员,inserted where 管理员.港口编号 = inserted.港口编号
	update 管理员 set 登录状态 = 'true' from 管理员,inserted where 管理员.员工编号 = inserted.员工编号
	commit tran
	print'登陆成功！'
end
else
begin
	begin tran
	update 管理员 set 登录状态 = 'false' from 管理员,inserted where 管理员.员工编号 = inserted.员工编号
	commit tran
	print'登出成功！'
end