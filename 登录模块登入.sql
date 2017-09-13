declare @password varchar(10)
select @password = 管理员.账号密码 from 管理员 where 员工编号 = 'A02'
if (@password = 'A02X')
	update 管理员 set 登录状态 = 'true' from 管理员 where 员工编号 = 'A02'
else
	print'登录失败!'