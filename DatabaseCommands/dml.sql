-- Insert Teachers
INSERT INTO Teacher (teacher_id, name, email, department, profile_picture, password, bio) VALUES
                                                                                              (1, 'Dr. Clara James', 'cjames@university.edu', 'Computer Science', 'clara.jpg', 'enc_pw_clara', 'Specializes in cybersecurity and ethical hacking.'),
                                                                                              (2, 'Dr. Martin Osei', 'mosei@university.edu', 'Engineering', 'martin.jpg', 'enc_pw_martin', 'Focused on robotics and control systems.');

-- Insert Students
INSERT INTO Student (student_id, name, email, password, profile_picture, year_standing, major, grad_date, school_id, university_college) VALUES
                                                                                                                                             (101, 'Elena Rivera', 'elena.rivera@student.edu', 'pw_elena_enc', 'elena.jpg', 'Junior', 'Information Technology', '2026-05-01', 'S001', 'College of Computing'),
                                                                                                                                             (102, 'Isaac Thompson', 'isaac.t@student.edu', 'pw_isaac_enc', 'isaac.jpg', 'Senior', 'Mechanical Engineering', '2025-12-15', 'S002', 'College of Engineering');

-- Insert Classes
INSERT INTO Class (class_id, enrollment_code, course_name, semester, teacher_id, course_description, shard_id) VALUES
                                                                                                                   (201, 'CS101-S24', 'Introduction to AI', 'Spring 2024', 1, 'Basics of AI, including search, logic, and neural networks.', 'shard-alpha'),
                                                                                                                   (202, 'ENG302-F23', 'Robotics Engineering', 'Fall 2023', 2, 'Advanced topics in robotic design and programming.', 'shard-beta');

-- Insert Course Materials
INSERT INTO Course_Material (id, class_id, name, vector_id, is_deleted, deleted_at) VALUES
                                                                                        (301, 201, 'AI Lecture Notes Week 1', 'vec_001', FALSE, NULL),
                                                                                        (302, 202, 'Robotics Design Blueprint', 'vec_002', FALSE, NULL);

-- Insert Enrollments
INSERT INTO Enrollment (enrollment_id, student_id, class_id, time_created) VALUES
                                                                               (401, 101, 201, '2024-01-10 09:00:00'),
                                                                               (402, 102, 202, '2023-08-22 10:30:00');

-- Insert Chat Sessions
INSERT INTO Chat_Session (session_id, student_id, class_id, start_time, end_time) VALUES
                                                                                      (501, 101, 201, '2024-03-01 14:00:00', '2024-03-01 14:30:00'),
                                                                                      (502, 102, 202, '2023-09-15 11:00:00', '2023-09-15 11:20:00');

-- Insert Chat Messages
INSERT INTO Chat_Message (message_id, session_id, sender_type, content, timestamp) VALUES
                                                                                       (601, 501, 'student', 'Can you explain how A* search works?', '2024-03-01 14:05:00'),
                                                                                       (602, 501, 'assistant', 'Sure! A* uses both cost to reach the node and heuristic estimate to the goal.', '2024-03-01 14:06:00'),
                                                                                       (603, 502, 'student', 'What microcontrollers are we using for the project?', '2023-09-15 11:05:00'),
                                                                                       (604, 502, 'assistant', 'We will use Arduino Uno for most of our lab work.', '2023-09-15 11:07:00');