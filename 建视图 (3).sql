create view viewp_s 
as 
select 船只编号,在泊船只.类型,所属公司,港口编号,泊位.泊位编号 
from 在泊船只,泊位 
where 在泊船只.泊位编号 = 泊位.泊位编号;