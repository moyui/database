create trigger update_employee
on ����Ա
instead of update
as
if(select ��¼״̬ from inserted) = 'true'
begin
	begin tran
	update ����Ա set ��¼״̬ = 'false' from ����Ա,inserted where ����Ա.�ۿڱ�� = inserted.�ۿڱ��
	update ����Ա set ��¼״̬ = 'true' from ����Ա,inserted where ����Ա.Ա����� = inserted.Ա�����
	commit tran
	print'��½�ɹ���'
end
else
begin
	begin tran
	update ����Ա set ��¼״̬ = 'false' from ����Ա,inserted where ����Ա.Ա����� = inserted.Ա�����
	commit tran
	print'�ǳ��ɹ���'
end