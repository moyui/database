create trigger delete_ship
on �ڲ���ֻ
after delete
as
begin
	declare @ipnum char(6),@imnum char(6),@isnum char(6)
	select @ipnum = ��λ��� from deleted
	update ��λ set ״̬ = 'true' where ��λ��� = @ipnum 
	select @imnum = ����Ա.Ա����� from ����Ա,��λ,deleted where ����Ա.��¼״̬ = 'true' and deleted.��λ��� = ��λ.��λ��� and ��λ.�ۿڱ�� = ����Ա.�ۿڱ��
	select @isnum = ��ֻ��� from deleted
	insert ʱ�̱� values(@isnum,@imnum,@ipnum,NULL,GETDATE())
	print'�ɹ�ɾ�����ݣ�����ͬ���޸�ʱ�̱�'
end
