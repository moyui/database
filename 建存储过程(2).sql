create proc insert_ship
@船只编号 char(6), @类型 varchar(30), @所属公司 varchar(30), @泊位编号 char(6)
as
insert into 船只 values(@船只编号,@类型,@所属公司,@泊位编号)