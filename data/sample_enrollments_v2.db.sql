BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "courses" (
	"course_number"	TEXT,
	"course_title"	TEXT,
	"loc"	TEXT,
	"meeting_time"	TEXT,
	PRIMARY KEY("course_number")
);
CREATE TABLE IF NOT EXISTS "professors" (
	"prof_id"	integer,
	"professor_name"	text,
	"professor_office"	text,
	PRIMARY KEY("prof_id")
);
CREATE TABLE IF NOT EXISTS "students" (
	"student_name"	TEXT,
	"uni"	TEXT,
	"year_in_school"	TEXT,
	PRIMARY KEY("uni")
);
CREATE TABLE IF NOT EXISTS "prof_courses" (
	"course_number"	TEXT,
	"prof_id"	INT,
	FOREIGN KEY("course_number") REFERENCES "courses"("course_number"),
	FOREIGN KEY("prof_id") REFERENCES "professors"("prof_id")
);
CREATE TABLE IF NOT EXISTS "student_courses" (
	"course_number"	TEXT,
	"uni"	TEXT,
	FOREIGN KEY("course_number") REFERENCES "courses"("course_number"),
	FOREIGN KEY("uni") REFERENCES "students"("uni")
);
INSERT INTO "courses" VALUES ('CSCI-UA-0201-003','Computer Systems Organization','ONLINE','TR 9:30-10:45AM');
INSERT INTO "courses" VALUES ('CSCI-UA-0202-002','Operating Systems','CIWW 109','TR 12:30-1:45PM');
INSERT INTO "courses" VALUES ('CSCI-UA-0310-001','Basic Algorithms','ONLINE','TR 12:30-1:45PM');
INSERT INTO "courses" VALUES ('CSCI-UA-0310-003','Basic Algorithms','CIWW 109','MW 2:00-3:15PM');
INSERT INTO "courses" VALUES ('CSCI-UA-0474-001','Software Engineering','5WP 101','MW 2:00-3:15PM');
INSERT INTO "courses" VALUES ('CSCI-UA-0479-001','Data Management and Analysis','ONLINE','MW 11:00-12:15PM');
INSERT INTO "professors" VALUES (1,'Allan Gottlieb','60 Fifth Ave 316');
INSERT INTO "professors" VALUES (2,'Chee Yap','WWH 301');
INSERT INTO "professors" VALUES (3,'Alan Siegel','WWH 330');
INSERT INTO "professors" VALUES (4,'Amos Bloomberg','WWH 424');
INSERT INTO "professors" VALUES (5,'Joseph Versoza','WWH 422');
INSERT INTO "students" VALUES ('David Chang','dc2312','Freshman');
INSERT INTO "students" VALUES ('Mary Todd','mt6271','Junior');
INSERT INTO "students" VALUES ('Mary Jones','mj3012','Junior');
INSERT INTO "students" VALUES ('Amy Cohen','ac8874','Sophomore');
INSERT INTO "students" VALUES ('Vinod Patel','vp2314','Senior');
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0201-003',1);
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0202-002',1);
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0310-001',2);
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0310-003',3);
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0474-001',4);
INSERT INTO "prof_courses" VALUES ('CSCI-UA-0479-001',5);
INSERT INTO "student_courses" VALUES ('CSCI-UA-0201-003','dc2312');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0201-003','mt6271');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0202-002','dc2312');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0202-002','mj3012');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0310-001','mj3012');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0310-001','dc2312');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0310-001','ac8874');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0310-001','vp2314');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0310-003','ac8874');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0474-001','vp2314');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0479-001','vp2314');
INSERT INTO "student_courses" VALUES ('CSCI-UA-0479-001','ac8874');
COMMIT;
