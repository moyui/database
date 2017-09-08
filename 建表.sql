use harbourManagement

create table 港口
(
	港口编号 char(6) NOT NULL,
	港口名 varchar(30),
	大泊位数量 int,
	小泊位数量 int,
	primary key (港口编号)
);

create table 管理员
(
	员工编号 char(6) NOT NULL,
	姓名 varchar(30), 
	账号密码 varchar(10),
	年龄 smallint,
	港口编号 char(6) NOT NULL,
	primary key(员工编号),
	foreign key(港口编号) references 港口(港口编号)
);

create table 泊位
(
	泊位编号 char(6) NOT NULL,
	状态 bit,
	类型 varchar(30),
	港口编号 char(6) NOT NULL,
	primary key(泊位编号),
	foreign key(港口编号) references 港口(港口编号)
);

create table 船只
(
	船只编号 char(6) NOT NULL,
	类型 varchar(30),
	所属公司 varchar(30),
	泊位编号 char(6) NOT NULL,
	primary key(船只编号),
	foreign key(泊位编号) references 泊位(泊位编号)
);

create table 船员
(
	船员编号 char(6) NOT NULL,
	姓名 varchar(30),
	年龄 smallint,
	船只编号 char(6) NOT NULL,
	通讯权限 bit,
	primary key(船员编号),
	foreign key(船只编号) references 船只(船只编号)
);

create table 泊位分配
(
	员工编号 char(6) NOT NULL,
	泊位编号 char(6) NOT NULL,
	分配时间 date,
	primary key(泊位编号),
	foreign key(员工编号) references 管理员(员工编号),
	foreign key(泊位编号) references 泊位(泊位编号)
);