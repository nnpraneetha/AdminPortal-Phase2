create table subjects(code int,subname char(40),
shortcut char(10),department char(10),primary key(code));

create table classsub(subname char(40),class char(10),
primary key(subname,class));


create table teachers(tid int,firstname char(20),
lastname char(20),designation char(20),email varchar(40),
age int,primary key(tid));

create table classes(class char(10),subname char(40),
teachername char(40),time varchar(5));


create table students(sid int,fname char(20),lname char(20),
class char(10),email varchar(40),age int);


Insert into subjects (code,subname,shortcut,department) values
(16401,"Search Engine","SE","CSE"),
(16402,"Information Security","IS","CSE"),
(16403,"Mobile Communications","MC","ECE"),
(16405,"Maths","Math","MPC"),
(16406,"Physics","Phy","MPC"),
(16407,"Biology","Bio","BiPC"),
(16408,"Chemistry","Chem","BiPC");


insert into classsub (subname,class) values
("Search Engine","A"),
("Information Security","A"),
("Mobile Communications","B"),
("Embedded Systems","B"),
("Maths","A"),
("Physics","A"),
("Biology","B"),
("Chemistry","B");


insert into  teachers (tid,firstname,lastname ,designation,email,age) values
(101,"Narayana","Rao","Professor","nrao@gmail.com",40),
(102,"Rama","Devi","Associate Professor","rd@gmail.com",36),
(103,"Uma","Devi","Assistant Professor","ud@gmail.com",44),
(104,"Padmavathi","naradasu","junior lecturer","npadma@gmail.com",29),
(105,"Nageswara","Rao","junior lecturer","nagesr@gmail.com",25),
(106,"Lakshmi","N","Assistant Professor","lakshmin@gmail.com",35);



insert into classes (class,subname,teachername,time) values
("A","Maths","Nageswara Rao","9:00"),
("A","Search Engines","Rama Devi","9:50"),
("A","Information Security","Uma Devi","10:40"),
("A","Physics","Narayana Roa","11:30"),
("B","Biology","Uma Devi","9:00"),
("B","Chemistry","Padmavathi naradasu","9:50"),
("B","Embedded Systems","Narayana Rao","10:40"),
("B","Mobile Communications","Lakshmi N","11:30");


insert into students (sid,fname ,lname ,class ,email ,age) values
(4001,"Sai","Mohan","A","sm@gmail.com",19),
(4002,"Veena","Naidu","A","vnaidu@gmail.com",18),
(4003,"Gayatri","S","A","sgai@gmail.com",19),
(4004,"Praveen","Venkata","A","vpraveen@gmail.com",18),
(4005,"Sundeep","N","A","nsunny@gmail.com",17),
(4006,"Praneetha","Naradasu","B","pn@gmail.com",19),
(4007,"Varsha","N","B","nvarsha@gmail.com",18),
(4008,"Purvansh","lucky","B","luckyp@gmail.com",17),
(4009,"Anil","Kumar","B","kanil@gmail.com",19),
(4010,"Sri","Vasu","B","svasu@gamil.com",18);


