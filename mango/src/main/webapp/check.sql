select * from info
create table info(
id varchar2(50),
pw varchar2(50),
name varchar2(50),
loc varchar2(200),
perfume varchar2(20),
pdnumber varchar2(50)
);
--id pw name loc perfume pdnum
insert into info values ('mango','mango','����','���ֱ����� ���� �۾Ϸ� 60, CGI����','1','2021',set_seq.nextval);
insert into info values ('admin','admin','������','���ֱ����� ���� �۾Ϸ� 60, CGI����','5','0000',set_seq.nextval);

alter table info add (setting varchar2(20));



select * from setting
update setting set perfume='a', weather='b', time= 'd' where set_id='0' and num='a'

delete from setting
--setting table ����
create table setting(
set_id varchar2(50),
perfume varchar2(100),
weather varchar2(50),
time varchar2(50)
);
insert into setting values('0','none','none','none','a');
insert into setting values('0','none','none','none','b');
insert into setting values('0','none','none','none','c');
insert into setting values('0','none','none','none','d');
insert into setting values('0','none','none','none','e');




create sequence set_seq
start with 0
increment by 1
minvalue 0
maxvalue 1000




--pertypetype, type1, type2, type3, type4, price
--�÷η� ��Ʈ���� ����Ƽ ��� �׸� ��� �����̽� �ִϸָ� �Ŀ���� ��� ������Ż Ÿ����-����  ������ �����
insert into perfume values('aa','ǻ��','���','������','��纣��','14900');
insert into perfume values('1','�÷η�','�����̽�','����Ƽ','������Ż','14900');
insert into perfume values('2','���','������','����Ƽ','�ִϸָ�','14900');
insert into perfume values('3','���','��Ʈ����','�÷η�','�����','14900');
insert into perfume values('4','�÷η�','��Ʈ����','���','���','14900');
insert into perfume values('5','�ִϸָ�','�����','�׸�','���','14900');




--song  singer  album  songtype
delete from song where song = 'mango'
insert into song values ('mango','����','������ �Ϸ�','aa');
insert into song values ('BUTTER','BTS','BUTTER','1');
insert into song values ('Next Level','Aespa','Next Level','2');
insert into song values ('ġ���ٶ�','Brave Girls','Summer Queen','3');
insert into song values ('Lilac','IU','LILAC','4');
insert into song values ('Timeless','SG���ʺ�','Sg Wanna Be+','5');
insert into song values ('Falling for U','����ƾ','"DIRECTOR"S CUT','6');
insert into song values ('Dun Dun Dance','�����̰�','Dear OHMYGIRL','7');
insert into song values ('Dynamite','BTS','Dynamite','8');
insert into song values ('�� ����� �� ��� ������','IU','�ɰ��� ��','9');
insert into song values ('��.��.��. in the morning','ITZY','GUESS WHO','10');


alter table song modify (song varchar2(50))




--����Ʈ
select * from INFO
select * from perfume
select * from song
insert into MESSAGE values('a','a',sysdate,'bbb',3);
select * from message where receive = 'a';