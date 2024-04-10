Create Application table
CREATE TABLE Application (
    Application_ID SERIAL PRIMARY KEY,
    ApplicationStatus VARCHAR(50),
    LastUpdated TIMESTAMP,
    Job_ID INT REFERENCES Job_Posting(Job_ID),
    Applicant_ID INT REFERENCES Applicant(Applicant_ID),
    Resume_ID INT,
    AssignedTo_User_ID INT REFERENCES "User"(User_ID)
);

-- Mock data inserts:
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 28, 83, 83, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 23, 84, 84, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 5, 90, 90, 12);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 37, 58, 58, 3);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 26, 67, 67, 5);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 28, 1, 1, 9);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 42, 60, 60, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 14, 99, 99, 13);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 27, 31, 31, 2);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 5, 102, 102, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 7, 39, 39, 10);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 27, 44, 44, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 24, 66, 66, 5);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 5, 76, 76, 9);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 12, 30, 30, 2);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 13, 52, 52, 3);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 48, 2, 2, 10);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 28, 82, 82, 11);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 41, 6, 6, 2);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 22, 52, 52, 4);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 50, 57, 57, 1);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 17, 12, 12, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 35, 24, 24, 10);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 5, 8, 8, 4);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 18, 109, 109, 5);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 10, 50, 50, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 23, 36, 36, 8);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 28, 93, 93, 10);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 19, 57, 57, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 22, 45, 45, 6);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 49, 20, 20, 11);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 24, 4, 4, 6);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 36, 85, 85, 6);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 37, 18, 18, 7);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 3, 81, 81, 4);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 41, 32, 32, 13);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 10, 83, 83, 12);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 20, 25, 25, 4);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 49, 56, 56, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 14, 72, 72, 5);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 32, 35, 35, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 49, 2, 2, 15);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 31, 64, 64, 5);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 35, 40, 40, 9);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 48, 55, 55, 3);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 43, 109, 109, 9);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 24, 78, 78, 4);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 22, 87, 87, 3);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 31, 31, 31, 8);
-- insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 45, 87, 87, 13);

SELECT * FROM application;
