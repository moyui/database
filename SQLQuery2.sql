use harbourManagement

create table �ۿ�
(
	�ۿڱ�� char(6) NOT NULL,
	�ۿ��� varchar(30),
	��λ���� int,
	С��λ���� int,
	primary key (�ۿڱ��)
);

create table ����Ա
(
	Ա����� char(6) NOT NULL,
	���� varchar(30), 
	�˺����� varchar(10),
	���� smallint,
	�ۿڱ�� char(6) NOT NULL,
	primary key(Ա�����),
	foreign key(�ۿڱ��) references �ۿ�(�ۿڱ��)
);

create table ��λ
(
	��λ��� char(6) NOT NULL,
	״̬ bit,
	���� varchar(30),
	�ۿڱ�� char(6) NOT NULL,
	primary key(��λ���),
	foreign key(�ۿڱ��) references �ۿ�(�ۿڱ��)
);

create table ��ֻ
(
	��ֻ��� char(6) NOT NULL,
	���� varchar(30),
	������˾ varchar(30),
	��λ��� char(6) NOT NULL,
	primary key(��ֻ���),
	foreign key(��λ���) references ��λ(��λ���)
);

create table ��Ա
(
	��Ա��� char(6) NOT NULL,
	���� varchar(30),
	���� smallint,
	��ֻ��� char(6) NOT NULL,
	ͨѶȨ�� bit,
	primary key(��Ա���),
	foreign key(��ֻ���) references ��ֻ(��ֻ���)
);

create table ��λ����
(
	Ա����� char(6) NOT NULL,
	��λ��� char(6) NOT NULL,
	����ʱ�� date,
	primary key(��λ���),
	foreign key(Ա�����) references ����Ա(Ա�����),
	foreign key(��λ���) references ��λ(��λ���)
);