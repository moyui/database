create trigger insert_ship
on �ڲ���ֻ
after insert
as
if 
(select ��λ.״̬ from ��λ,inserted where ��λ.��λ��� = inserted.��λ���) = 'true'
begin
	declare @ipnum char(6),@imnum char(6),@isnum char(6)
	select @ipnum = ��λ��� from inserted
	update ��λ set ״̬ = 'false' where ��λ��� = @ipnum 
	select @imnum = ����Ա.Ա����� from ����Ա,��λ,inserted where ����Ա.��¼״̬ = 'true' and inserted.��λ��� = ��λ.��λ��� and ��λ.�ۿڱ�� = ����Ա.�ۿڱ��
	select @isnum = ��ֻ��� from inserted
	insert ʱ�̱� values(@isnum,@imnum,@ipnum,GETDATE(),NULL)
	print'�ɹ��������ݣ�����ͬ���޸�ʱ�̱�'
end
else
begin
	print'��������'
	rollback transaction
end