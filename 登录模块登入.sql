declare @password varchar(10)
select @password = ����Ա.�˺����� from ����Ա where Ա����� = 'A02'
if (@password = 'A02X')
	update ����Ա set ��¼״̬ = 'true' from ����Ա where Ա����� = 'A02'
else
	print'��¼ʧ��!'