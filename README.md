# Database-Management-SQL
This repository contains projects related to databases and Structured Query Language


## **Project 1**
The aim of this project was to perform ER Modelling and then convert it to the Relational Table Schema for 
mobile application used in school-parent communications according to the assignment specified
 user requirements and activities.


 ## **Project 2**
Based on the provided database schema of a University(listed below)
1. classroom ( building: varchar(15), room_number: varchar(7), capacity: numeric(4,0) )
2. department ( dept_name: varchar(20), building: varchar(15), budget: numeric(12,2) )
3. course ( course_id: varchar(8), title: varchar(50), dept_name: varchar(20), credits: numeric(2,0) )
 Foreign key: dept_name references department(dept_name)
4. instructor ( ID: varchar(5), name: varchar(20), dept_name: varchar(20), salary: numeric(8,2) )
 Foreign key: dept_name references department(dept_name)
5. time_slot ( time_slot_id: varchar(4), day: varchar(1), start_hr: numeric(2), start_min: numeric(2),
 end_hr: numeric(2), end_min: numeric(2) )
6. section ( course_id: varchar(8), sec_id: varchar(8), semester: varchar(6), year: numeric(4,0),
 building: varchar(15), room_number: varchar(7), time_slot_id: varchar(4) )
Foreign key: course_id references course(course_id),
 (building, room_number) references classroom(building, room_number),
 time_slot_id references time_slot(time_slot_id)
7. teaches ( ID: varchar(5), course_id: varchar(8), sec_id: varchar(8), semester: varchar(6),
 year: numeric(4,0) )
Foreign key: (course_id,sec_id, semester, year) references section(course_id,sec_id, semester, year),
 ID references instructor(ID)
8. student ( ID: varchar(5), name: varchar(20), dept_name: varchar(20), tot_cred: numeric(3,0) )
 Foreign key: dept_name references department(dept_name)
9. takes ( ID: varchar(5), course_id: varchar(8), sec_id: varchar(8), semester: varchar(6),
 year: numeric(4,0), grade: varchar(2) )
Foreign key: (course_id,sec_id, semester, year) references section(course_id,sec_id, semester, year),
 ID references student(ID)
10. grade_point ( grade: varchar(2), point: numeric(2, 1) ) 

**The task was splitted into two stages:**

a) **Build the database using MySQL** - Using the schemas above, define tables with appropriate constraints and store the corresponding table definition statements in a sql file called "tables.sql". 

b) **SQL queries** - Developed SQL statements for the specified queries in the assignment description. Finally, stored each SQL statement in separate sql files called "q1a.sql", "q1b.sql", "q2.sql", …, "q10.sql

**Both projects have been submitted as the partial requirement for the COM3278 Introduction to the Database MAnagement Systems at the University of Hong Kong**
