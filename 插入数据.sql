insert into 港口 values('001','A区',10,0);
insert into 港口 values('002','B区',5,5);
insert into 港口 values('003','C区',0,10);

insert into 管理员 values('A01','李敏','A01X',24,'001','true');
insert into 管理员 values('A02','刘丽','A02X',26,'001','false');
insert into 管理员 values('A03','李楠','A03X',40,'002','true');
insert into 管理员 values('A04','于大宝','A04X',22,'002','false');
insert into 管理员 values('A05','王铭','A05X',30,'003','true');
insert into 管理员 values('A06','张丽芳','A06X',35,'003','false');

insert into 泊位 values('P01','false','大','001');
insert into 泊位 values('P02','true','大','001');
insert into 泊位 values('P03','true','大','001');
insert into 泊位 values('P04','false','大','001');
insert into 泊位 values('P05','true','大','001');
insert into 泊位 values('P06','true','小','002');
insert into 泊位 values('P07','false','小','002');
insert into 泊位 values('P08','true','大','002');
insert into 泊位 values('P09','true','大','002')
insert into 泊位 values('P10','true','大','002');
insert into 泊位 values('P11','false','小','003');
insert into 泊位 values('P12','false','小','003');
insert into 泊位 values('P13','true','小','003');
insert into 泊位 values('P14','true','小','003');
insert into 泊位 values('P15','true','小','003');

insert into 在泊船只 values('S03','大','A','P04');
insert into 在泊船只 values('S04','小','B','P07');
insert into 在泊船只 values('S05','小','C','P11');
insert into 在泊船只 values('S06','大','A','P01');
insert into 在泊船只 values('S07','小','C','P11');

insert into 船员 values('M01','王磊',30,'S03','true');
insert into 船员 values('M02','刘醒',35,'S03','false');
insert into 船员 values('M03','赵宁',32,'S03','false');
insert into 船员 values('M04','曲波',41,'S04','true');
insert into 船员 values('M05','孙明',25,'S05','true');
insert into 船员 values('M06','天蓝',23,'S06','true');
insert into 船员 values('M07','王波',27,'S06','false');
insert into 船员 values('M08','李明',30,'S06','false');
insert into 船员 values('M09','于谦',32,'S07','true');
insert into 船员 values('M10','曾诚',36,'S07','false');

insert into 时刻表 values('001','S01','A02','P01','2017-03-04',NULL);
insert into 时刻表 values('002','S02','A01','P03','2017-03-11',NULL);
insert into 时刻表 values('003','S02','A02','P03',NULL,'2017-03-20');
insert into 时刻表 values('004','S01','A01','P01',NULL,'2017-04-10');
insert into 时刻表 values('005','S05','A05','P11','2017-06-12',NULL);
insert into 时刻表 values('006','S04','A04','P07','2017-06-20',NULL);
insert into 时刻表 values('007','S03','A01','P04','2017-07-04',NULL);
insert into 时刻表 values('008','S06','A02','P01','2017-07-22',NULL);
insert into 时刻表 values('009','S07','A06','P12','2017-08-01',NULL);