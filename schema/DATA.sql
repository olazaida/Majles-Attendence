create role manager ;
create user volunteer1 password '2612';
create user volunteer2 password '2612';
grant usage on schema majles to manager 
grant select, delete, update, insert on table course to manager; 
grant delete, update, insert on table student to volunteer1;
grant delete, update, insert on table student to volunteer2;
grant delete, update, insert on table lecture to volunteer1, volunteer2;
grant delete, update, insert on table attend to volunteer1, volunteer2;
INSERT INTO course ( course_id, title ,material, instructor , address )
VALUES ('2','Akeda' ,'akeda', 'Ali sweti', 'Hamza mosque' );
select * from course 
INSERT INTO student ( id, address ,gender, first_name , second_name, third_name, fourth_name )
VALUES ('10','Gaza' ,'male', 'Ahmed', 'Ismail', 'Mohammed', 'Saqa' );
select * from student  
INSERT INTO phone_nums ( id,student_id , phone_nums)
VALUES ('3','2' ,'0595494576');
select * from phone_nums  where student_id = '1';
INSERT INTO lecture VALUES ('4','«·—»«' , 'hamza mosque', '1');
INSERT INTO lecture VALUES ('5','«·ÿÂ«—…' , 'hamza mosque', '1');
INSERT INTO lecture VALUES ('10','«·«Ê«‰Ì' , 'hamza mosque', '1');


select * from lecture
select * from attend a

INSERT INTO attend VALUES ('4','1','2','3') 
INSERT INTO attend VALUES ('5','1','2','4') 
INSERT INTO attend VALUES ('6','1','2','5') 
INSERT INTO attend VALUES ('7','1','2','6')
INSERT INTO attend VALUES ('8','1','2','7') 
INSERT INTO attend VALUES ('11','1','2','10') 
INSERT INTO attend VALUES ('19','1','5','2') 



