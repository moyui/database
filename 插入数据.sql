insert into 港口 values('001','A区',7,0);
insert into 港口 values('002','B区',4,5);
insert into 港口 values('003','C区',0,9);

insert into 管理员 values('A01','李敏','A01X',24,'001');
insert into 管理员 values('A02','刘丽','A02X',26,'001');
insert into 管理员 values('A03','李楠','A03X',40,'002');
insert into 管理员 values('A04','于大宝','A04X',22,'002');
insert into 管理员 values('A05','王铭','A05X',30,'003');
insert into 管理员 values('A06','张丽芳','A06X',35,'003');

insert into 泊位 values('P01','false','大','001');
insert into 泊位 values('P02','true','大','001');
insert into 泊位 values('P03','false','大','001');
insert into 泊位 values('P04','false','大','001');
insert into 泊位 values('P05','true','小','002');
insert into 泊位 values('P06','true','小','002');
insert into 泊位 values('P07','false','大','002');
insert into 泊位 values('P08','true','大','002');
insert into 泊位 values('P09','true','大','002')
insert into 泊位 values('P10','false','小','003');

insert into 船只 values('S01','大','A','P01');
insert into 船只 values('S02','大','A','P03');
insert into 船只 values('S03','大','B','P04');
insert into 船只 values('S04','大','B','P07');
insert into 船只 values('S05','小','C','P10');

insert into 船员 values('M01','王磊',30,'S01','true');
insert into 船员 values('M02','刘醒',35,'S01','false');
insert into 船员 values('M03','赵宁',32,'S02','true');
insert into 船员 values('M04','曲波',41,'S02','false');
insert into 船员 values('M05','孙明',25,'S02','false');
insert into 船员 values('M06','天蓝',23,'S02','false');
insert into 船员 values('M07','王波',27,'S03','true');
insert into 船员 values('M08','李明',30,'S03','false');
insert into 船员 values('M09','于谦',32,'S04','true');
insert into 船员 values('M10','曾诚',36,'S05','true');

insert into 泊位分配 values('A01','P01','2017-04-02');
insert into 泊位分配 values('A03','P03','2017-03-02');
insert into 泊位分配 values('A04','P04','2017-04-04');
insert into 泊位分配 values('A04','P07','2017-06-20');
insert into 泊位分配 values('A05','P10','2017-06-12');
