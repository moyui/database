create trigger check_update_ship
on ��ֻ
after insert
as
if 
(select ��λ.״̬ from ��λ,inserted where ��λ.��λ��� = inserted.��λ���) = 'true'
begin
	declare @���벴λ��� char(6)
	select @���벴λ��� = ��λ��� from inserted
	update ��λ set ״̬ = 'false' where ��λ��� = @���벴λ��� 
	print'�ɹ��������ݣ�'
end
else
begin
	print'��������'
	rollback transaction
end