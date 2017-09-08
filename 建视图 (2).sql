create view viewp
as
select 泊位编号,类型 from 泊位 where 状态 = 'true';
