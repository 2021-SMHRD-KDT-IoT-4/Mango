select * from info
--id pw perfume song light pdnum loc
insert into info values ('aa','aa','aa','aa','aa','aa','aa');
insert into info values ('mango','mango','5','4','0','2021','광주광역시 남구 송암로 60, CGI센터');
insert into info values ('admin','admin','1','9','0','0000','광주광역시 남구 송암로 60, CGI센터');
drop table info;
create table info(
id varchar2(50),
pw varchar2(50),
name varchar2(50),
loc varchar2(200),
perfume varchar2(20),
pdnumber varchar2(50)
);
--id pw name loc perfume pdnum
insert into info values ('mango','mango','망고','광주광역시 남구 송암로 60, CGI센터','1','2021');
insert into info values ('admin','admin','관리자','광주광역시 남구 송암로 60, CGI센터','5','0000');




--pertypetype, type1, type2, type3, type4, price
--플로럴 시트러스 프루티 우디 그린 허브 스파이시 애니멀릭 파우더리 모시 오리엔탈 타바코-레더  구르망 아쿠아
insert into perfume values('aa','퓨어','우드','오렌지','블루베리','14900');
insert into perfume values('1','플로럴','스파이시','프루티','오리엔탈','14900');
insert into perfume values('2','허브','구르망','프루티','애니멀릭','14900');
insert into perfume values('3','모시','시트러스','플로럴','아쿠아','14900');
insert into perfume values('4','플로럴','시트러스','허브','우디','14900');
insert into perfume values('5','애니멀릭','아쿠아','그린','허브','14900');




--song  singer  album  songtype
insert into song values ('mango','망고','망고의 하루','aa');
insert into song values ('BUTTER','BTS','BUTTER','1');
insert into song values ('Next Level','Aespa','Next Level','2');
insert into song values ('치맛바람','Brave Girls','Summer Queen','3');
insert into song values ('Lilac','IU','LILAC','4');
insert into song values ('Timeless','SG워너비','Sg Wanna Be+','5');
insert into song values ('Falling for U','세븐틴','"DIRECTOR"S CUT','6');
insert into song values ('Dun Dun Dance','오마이걸','Dear OHMYGIRL','7');
insert into song values ('Dynamite','BTS','Dynamite','8');
insert into song values ('잠 못드는 밤 비는 내리고','IU','꽃갈피 둘','9');
insert into song values ('마.피.아. in the morning','ITZY','GUESS WHO','10');


alter table song modify (song varchar2(50))




--설렉트
select * from perfume
select * from song
insert into MESSAGE values('a','a',sysdate,'bbb',3);
select * from message where receive = 'a';