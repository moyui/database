create proc find_harbour @num char(6)
	as
	select �ۿ�.�ۿڱ��,ʱ�̱�.��ֻ���,���ʱ��,����ʱ�� from ʱ�̱�,�ۿ�,��λ
	where ʱ�̱�.��ֻ��� = @num and ʱ�̱�.��λ��� = ��λ.��λ��� and ��λ.�ۿڱ�� = �ۿ�.�ۿڱ��