create proc find_room 
@类型 varchar(30)
as
select 泊位编号,港口编号 from 泊位
where 状态='true' and 类型=@类型;