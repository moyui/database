declare @船只编号 char(6), @类型 varchar(30), @所属公司 varchar(30), @泊位编号 char(6)
set @船只编号 = 'S06'
set @类型 = '大'
set @所属公司 = 'D'
set @泊位编号 = 'P02'
exec insert_ship @船只编号,@类型,@所属公司,@泊位编号