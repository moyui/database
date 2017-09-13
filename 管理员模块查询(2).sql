select 员工编号,姓名,管理员.港口编号 as 所属港口, 泊位编号 as 管理泊位 from 管理员,泊位
where 管理员.港口编号 = 泊位.港口编号 order by 员工编号