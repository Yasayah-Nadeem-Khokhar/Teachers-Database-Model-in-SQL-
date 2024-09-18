-- Insert: teacher
INSERT INTO teacher_dbms.teacher (id, first_name, last_name, date_of_birth, gender, email, phone_number, address, city, state, postal_code, country, nationality, start_date, end_date, status) 
VALUES 
(1, 'Sardar', 'Muhammad Usman', '1975-04-15', 'Male', 'susman@comsats.edu.pk', '+92 51 9247000', 'Some Address', 'Islamabad', 'Islamabad', '44000', 'Pakistan', 'Pakistani', '2011-01-01', NULL, 'Active'),
(2, 'Sarah', 'Tariq', '1969-06-09', 'Female', 'sarahtariq@comsats.edu.pk', '+92 51 1234567', 'Another Address', 'Islamabad', 'Islamabad', '44000', 'Pakistan', 'Pakistani', '2015-06-01', NULL, 'Active');


-- Insert: position
INSERT INTO teacher_dbms.position (id, title, description, previous_position, start_date, end_date, teacher_id) 
VALUES 
(1, 'Professor', 'Senior faculty member', 'Assistant Professor', '2011-01-01', NULL, 1),
(2, 'Assistant Professor', 'Junior faculty member', 'Lecturer', '2015-06-01', NULL, 2);


-- Insert: education
INSERT INTO teacher_dbms.education (id, degree, field_of_study, institution, country, year, teacher_id) 
VALUES 
(1, 'PhD', 'Enterprise Management', 'Zhejiang University', 'China', 2005, 1),
(2, 'MSc', 'Finance', 'Umea University', 'Sweden', 2000, 1),
(3, 'MBA', 'Finance', 'University of Peshawar', 'Pakistan', 1995, 1),
(4, 'PhD', 'Accounting', 'Oxford University', 'UK', 2010, 2);


-- Insert: publication
INSERT INTO teacher_dbms.publication (id, title, journal_name, date_published, doi, publisher, teacher_id, authors) 
VALUES 
(1, 'Innovative Finance Techniques', 'Finance Journal', '2022-03-15', '10.1000/jfinance.2022.003', 'Finance Publisher', 1, 'A. Researcher, B. Analyst'),
(2, 'Advanced Accounting Methods', 'Accounting Journal', '2021-08-20', '10.1000/jaccount.2021.008', 'Accounting Publisher', 2, 'C. Accountant, D. Auditor');


-- Insert: award
INSERT INTO teacher_dbms.award (id, title, awarding_body, date_awarded, teacher_id, description) 
VALUES 
(1, 'Best Researcher Award', 'University Award Committee', '2021-12-10', 2, 'Awarded for excellence in research'),
(2, 'Outstanding Teacher Award', 'Education Board', '2020-10-15', 2, 'Recognized for outstanding teaching skills');


-- Insert: administrativeengagement
INSERT INTO teacher_dbms.administrativeengagement (id, role, committee, start_date, end_date, teacher_id) 
VALUES 
(1, 'Member', 'Department Admission Committee', '2012-01-01', NULL, 1),
(2, 'Member', 'Campus Proctorial Board', '2013-01-01', NULL, 1),
(3, 'Member', 'Department NBEAC Committee', '2014-01-01', NULL, 1),
(4, 'Member', 'Department Exam Monitoring Committee', '2015-01-01', NULL, 1),
(5, 'Member', 'Department Disaster Committee', '2016-01-01', NULL, 1),
(6, 'Member', 'Department Admission Committee', '2017-01-01', NULL, 2),
(7, 'Member', 'Campus Proctorial Board', '2018-01-01', NULL, 2),
(8, 'Member', 'Department NBEAC Committee', '2019-01-01', NULL, 2),
(9, 'Member', 'Department Exam Monitoring Committee', '2020-01-01', NULL, 2),
(10, 'Member', 'Department Disaster Committee', '2021-01-01', NULL, 2);


-- Insert: languageskill
INSERT INTO teacher_dbms.languageskill (id, language, proficiency, teacher_id) 
VALUES 
(1, 'Urdu', 'Fluent', 1),
(2, 'English', 'Fluent', 1),
(3, 'Pushto', 'Fluent', 1),
(4, 'Urdu', 'Fluent', 2),
(5, 'English', 'Fluent', 2);


-- Insert: researchinterest
INSERT INTO teacher_dbms.researchinterest (id, interest, teacher_id) 
VALUES 
(1, 'FinTech', 1),
(2, 'Digital Platform', 2);


-- Insert: department
INSERT INTO teacher_dbms.department (id, department_name, faculty_id) 
VALUES 
(1, 'Finance & Technology', 1),
(2, 'Computer Science', 1),
(3, 'Software Engineering', 2);


-- Insert: course
INSERT INTO teacher_dbms.course (id, course_name, course_code, credits, department_id, description) 
VALUES 
(1, 'Corporate Finance', 'FIN101', 3, 1, 'Introduction to Corporate Finance'),
(2, 'Financial Accounting', 'ACC102', 3, 1, 'Basics of Financial Accounting'),
(101, 'Introduction to Computer Science', 'CS101', 4, 2, 'Fundamentals of Computer Science'),
(102, 'Advanced Mathematics', 'MATH202', 4, 2, 'Advanced Topics in Mathematics'),
(103, 'Data Structures', 'CS103', 3, 2, 'Introduction to Data Structures'),
(104, 'Algorithms', 'CS104', 3, 2, 'Introduction to Algorithms'),
(105, 'Database Systems', 'CS105', 4, 2, 'Fundamentals of Database Systems'),
(106, 'Operating Systems', 'CS106', 4, 2, 'Introduction to Operating Systems'),
(107, 'Computer Networks', 'CS107', 3, 2, 'Introduction to Computer Networks'),
(108, 'Software Engineering', 'CS108', 4, 2, 'Principles of Software Engineering'),
(109, 'Artificial Intelligence', 'CS109', 4, 2, 'Introduction to Artificial Intelligence'),
(110, 'Machine Learning', 'CS110', 4, 2, 'Introduction to Machine Learning'),
(111, 'Quantum Computing', 'CS111', 3, 3, 'Introduction to Quantum Computing'),
(112, 'Blockchain Technology', 'CS112', 3, 3, 'Introduction to Blockchain Technology'),
(113, 'Cybersecurity', 'CS113', 4, 3, 'Fundamentals of Cybersecurity'),
(114, 'Cloud Computing', 'CS114', 4, 3, 'Introduction to Cloud Computing'),
(115, 'Internet of Things', 'CS115', 3, 3, 'Introduction to Internet of Things');

-- Insert: researchproject
INSERT INTO teacher_dbms.researchproject (id, title, funding_agency, start_date, end_date, funding_amount, teacher_id, description) 
VALUES 
(1, 'Digital Finance Innovation', 'XYZ Funding Agency', '2020-01-01', '2022-12-31', 50000.00, 1, 'Exploring digital finance platforms'),
(2, 'Accounting Automation', 'ABC Funding Agency', '2019-06-01', '2021-05-31', 30000.00, 2, 'Automating accounting processes');


-- Insert: achievement
INSERT INTO teacher_dbms.achievement (id, title, description, date_awarded, teacher_id) 
VALUES 
(1, 'Frontier Scholarship at MBA', 'Received for academic excellence in MBA', '1995-06-01', 1),
(2, 'Free-Education Scholarship at MSc', 'Awarded for exceptional performance in MSc', '2000-06-01', 1);


-- Insert: teachercourse
INSERT INTO teacher_dbms.teachercourse (id, teacher_id, course_id, semester, year) 
VALUES 
(1, 1, 1, 'Fall', 2023),
(2, 2, 2, 'Spring', 2024),
(3, 3, 101, 'Fall', 2022),
(4, 4, 102, 'Spring', 2022),
(5, 5, 103, 'Fall', 2022),
(6, 6, 104, 'Spring', 2022),
(7, 7, 105, 'Fall', 2022),
(8, 8, 106, 'Spring', 2022),
(9, 9, 107, 'Fall', 2022),
(10, 10, 108, 'Spring', 2022),
(11, 11, 109, 'Fall', 2022),
(12, 12, 110, 'Spring', 2022),
(13, 13, 111, 'Fall', 2022),
(14, 14, 112, 'Spring', 2022),
(15, 15, 113, 'Fall', 2022),
(16, 16, 114, 'Spring', 2022),
(17, 17, 115, 'Fall', 2022);


-- Insert: teachinginterest
INSERT INTO teacher_dbms.teachinginterest (id, interest, teacher_id) 
VALUES 
(1, 'Corporate Finance', 1),
(2, 'Financial Accounting', 2);

