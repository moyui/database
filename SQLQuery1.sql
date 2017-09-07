create database harbourManagement
on 
(
	name = harbour_data,
	filename = 'd:\harbourdata.mdf',
	size = 10,
	filegrowth = 5
)
log on 
(
	name = 'harbour_log',
	filename = 'd:\harbourlog.ldf',
	size = 5 MB,
	filegrowth = 5 MB
);