create table lecture
	(id                 varchar(15),
	 name	        	varchar(15),
	 address            varchar(15),
	 course_id          varchar(20),
	 primary key (id),
	 foreign key (course_id) references course (course_id)
	);
drop table lecture;

create table attend
	(id		            varchar(20),
	 course_id          varchar(20),
	 student_id         varchar(20),
	 lecture_id         varchar(20),
	  primary key (id),
	  foreign key (course_id) references course(course_id) on delete cascade,
	  foreign key (student_id) references student(id) on delete cascade ,
	  foreign key (lecture_id) references lecture (id) on delete cascade
	);
 


drop table attend;
create table course
	(course_id		varchar(8), 
	 title			varchar(50), 
	 material		varchar(20),
	 instructor		varchar(20),
	 address        varchar(20),
	 primary key (course_id)
	
	);
 drop table student;

create table student
	(id		        varchar(8), 
     name			varchar(8),
	 address		varchar(6),
	 gender         varchar(2),
	 phone_num      numeric(15),
	  first_name		            varchar(20), 
	 second_name             varchar(20),
	 third_name             varchar(20),
	 fourth_name               varchar(20),
		
	 primary key (id)
	 
	);
	

	  
	 
	 
create table phone_nums
     (id		            varchar(20), 
	 student_id             varchar(20),
	 phone_nums             numeric(15),
	  primary key (id),
	  foreign key (student_id) references student(id) on delete cascade );




ALTER TABLE attend 
ADD CONSTRAINT constraint_name FOREIGN KEY (student_id) references student(id) on delete cascade;
