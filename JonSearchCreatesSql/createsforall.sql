-- Create User table
CREATE TABLE "User" (
    User_ID SERIAL PRIMARY KEY,
    UserName VARCHAR(255),
    Position VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Location VARCHAR(255),
    LastLogin TIMESTAMP
);

INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Sarah Davis', 'Engineering Manager', 'john.doe@example.com', '607-140-2479', '202 Maple Ln');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('David Thomas', 'Business Development Manager', 'user456@example.com', '896-847-6459', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Emily Johnson', 'Chief Technology Officer (CTO)', 'example.email@example.com', '696-501-4546', '101 Pine Rd');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Daniel Martinez', 'Chief Technology Officer (CTO)', 'example.email@example.com', '044-657-4935', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('William Anderson', 'IT Manager', 'example.email@example.com', '470-598-2220', '789 Oak Ave');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Robert Wilson', 'Chief Information Officer (CIO)', 'user456@example.com', '182-760-8565', '202 Maple Ln');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Emily Johnson', 'Director of User Experience', 'example.email@example.com', '048-589-2129', '101 Pine Rd');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Jessica Taylor', 'IT Manager', 'user456@example.com', '617-412-2987', '202 Maple Ln');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('James Hernandez', 'Technical Lead', 'testuser123@example.com', '087-366-6211', '202 Maple Ln');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('David Thomas', 'Software Development Manager', 'user456@example.com', '913-868-8682', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Laura Rodriguez', 'Product Manager', 'user456@example.com', '419-874-7561', '123 Main St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Amanda Garcia', 'Director of Operations', 'example.email@example.com', '721-827-4042', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Laura Rodriguez', 'Chief Technology Officer (CTO)', 'user456@example.com', '334-018-3590', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('Jessica Taylor', 'Director of Information Technology', 'john.doe@example.com', '521-190-1113', '456 Elm St');
INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('John Smith', 'Director of Information Technology', 'user456@example.com', '376-507-7348', '101 Pine Rd');


-- Create Search_Logs table
CREATE TABLE Search_Logs (
    SearchLogs_ID SERIAL PRIMARY KEY,
    SearchDateTime TIMESTAMP,
    SearchTerms TEXT,
    Filters VARCHAR(50),
    User_ID INT REFERENCES "User"(User_ID)
);

-- Create 'Job_Posting' table
CREATE TABLE Job_Posting (
    Job_ID SERIAL PRIMARY KEY,
    Position VARCHAR(255),
    CompanyName VARCHAR(255),
    EmploymentType VARCHAR(50),
    JobDescription TEXT,
    ExperienceLevel VARCHAR(50),
    RequiredSkills TEXT,
    Compensation VARCHAR(255),
    Benefits TEXT,
    WorkLocation VARCHAR(255),
    ApplicationDeadline DATE
);

insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Architect', 'Aurora Industries', 'Contract', 'Designs and develops as well as maintains software applications or systems according to project requirements and specifications', 'Mid-level', 'PHP', '$20.75', 'retirement plan', '111 Pinecrest Dr', '2024-11-27');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Back End Developer', 'Apex Innovations', 'Full-time', 'Analyzes data to extract insights and identify trends as well as inform business decisions using statistical and data visualization techniques', 'Mid-level', 'Scala', '$10.00', 'paid time off', '1313 Cedarwood Ct', '2024-09-29');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Machine Learning Engineer', 'Vista Vision Corporation', 'Part-time', 'Leads the development and management of a product throughout its lifecycle from ideation to release ensuring alignment with business goals and customer needs', 'Senior level', 'Ruby', '$20.75', 'paid time off', '2121 Hickory Ave', '2024-05-27');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Mobile App Developer', 'Crimson Consulting', 'Internship', 'Creates user-centered designs for digital products or interfaces focusing on usability and accessibility as well as user satisfaction', 'Mid-level', 'Rust', '$20.75', 'health insurance', '1414 Birchwood Way', '2024-09-21');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Systems Analyst', 'Cascade Corporation', 'Temporary', 'Implements and manages continuous integration/continuous delivery (CI/CD) pipelines and automates infrastructure provisioning and ensures smooth collaboration between development and operations teams', 'Mid-level', 'Java', '$20.75', 'paid time off', '1616 Pinecrest Ave', '2024-12-01');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('AI Engineer', 'Blue Sky Enterprises', 'Full-time', 'Tests software applications to identify defects and ensure functionality as well as maintain quality standards throughout the development lifecycle', 'Entry level', 'Rust', '$18.00', 'employee discounts', '333 Maplewood Dr', '2024-05-21');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('IT Director', 'Cascade Corporation', 'Contract', 'Provides technical assistance and troubleshooting support to users and resolving software as well as hardware issues via various communication channels', 'Senior level', 'Rust', '$10.00', 'paid time off', '909 Sycamore Ln', '2024-08-15');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Product Manager', 'Golden Gate Ventures', 'Seasonal', 'Analyzes business requirements and processes to design and implement technology solutions that meet organizational objectives', 'Mid-level', 'Swift', '$12.25', 'paid time off', '1919 Willowwood Ct', '2024-08-12');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Engineer', 'Majestic Solutions', 'Part-time', 'Manages and maintains databases including installation and configuration as well as performance tuning and backup and recovery as well as security', 'Mid-level', 'PHP', '$12.25', 'retirement plan', '505 Walnut Way', '2024-09-11');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('QA Tester', 'Oceanic Enterprises', 'Contract', 'Designs and implements as well as manages computer networks including LANs and WANs as well as intranets to ensure connectivity and data integrity', 'Entry level', 'Scala', '$10.00', 'health insurance', '999 Hickory Ln', '2024-10-28');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Systems Analyst', 'Majestic Solutions', 'Temporary', 'Plans and executes as well as oversees IT projects which include scope definition and resource allocation as well as scheduling and risk management to achieve project objectives', 'Senior level', 'Python', '$20.75', 'employee discounts', '222 Oakwood Ave', '2024-10-28');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Full Stack Developer', 'Titan Tech Group', 'Internship', 'Monitors and detects as well as responds to security threats and incidents and implements security measures as well as conducts security assessments to protect organizational assets', 'Executive level', 'C++', '$10.00', 'employee discounts', '111 Pinecrest Dr', '2024-05-21');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('UX Designer', 'Golden Gate Ventures', 'Internship', 'Designs and develops websites or web applications using programming languages and frameworks as well as web technologies', 'Senior level', 'Rust', '$10.00', 'retirement plan', '707 Spruce Ave', '2024-12-16');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Network Engineer', 'Sapphire Systems', 'Part-time', 'Designs and develops mobile applications for iOS or Android platforms and ensuring performance and usability as well as compatibility', 'Senior level', 'Rust', '$10.00', 'health insurance', '1919 Willowwood Ct', '2024-06-27');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Cloud Architect', 'Majestic Solutions', 'Seasonal', 'Designs and manages cloud infrastructure and services including cloud migration and scalability and security and cost optimization', 'Executive level', 'Rust', '$18.00', 'paid time off', '909 Sycamore Ln', '2024-12-16');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Mobile App Developer', 'Crimson Consulting', 'Full-time', 'Analyzes business processes identifies opportunities for improvement and translates business requirements into technical solutions', 'Entry level', 'Rust', '$10.00', 'dental coverage', '101 Pine Rd', '2024-10-29');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Mobile App Developer', 'Oceanic Enterprises', 'Seasonal', 'Provides expertise and advice on technology strategy and implementation and optimization to improve business performance and efficiency', 'Senior level', 'Kotlin', '$15.50', 'dental coverage', '202 Maple Ln', '2024-11-17');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Developer', 'Sunrise Technologies', 'Part-time', 'Develops artificial intelligence (AI) algorithms and models and applications to solve complex problems and automate tasks', 'Mid-level', 'Python', '$18.00', 'dental coverage', '606 Willow Rd', '2024-05-09');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Data Scientist', 'Acme Corporation', 'Seasonal', 'Designs and implements machine learning models and systems including data preprocessing and model training and evaluation', 'Senior level', 'Kotlin', '$15.50', 'dental coverage', '1313 Cedarwood Ct', '2024-11-04');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Data Analyst', 'Apex Innovations', 'Contract', 'Develops both front-end and back-end components of web applications covering the entire software stack', 'Entry level', 'Java', '$18.00', 'employee discounts', '999 Hickory Ln', '2024-07-30');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('IT Manager', 'Pinnacle Partners', 'Seasonal', 'Designs and implements user interfaces and client-side functionality for web applications using HTML and CSS and JavaScript', 'Senior level', 'Java', '$20.75', 'paid time off', '111 Pinecrest Dr', '2024-09-02');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Network Administrator', 'Pinnacle Partners', 'Internship', 'Builds server-side logic and databases for web applications ensuring seamless integration with front-end components', 'Entry level', 'Swift', '$15.50', 'employee discounts', '999 Hickory Ln', '2024-04-27');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Developer', 'Sunrise Technologies', 'Contract', 'Creates visually appealing and user-friendly interface designs for digital products focusing on layout and typography and visual hierarchy', 'Executive level', 'C++', '$15.50', 'paid time off', '888 Sprucewood Ave', '2024-04-17');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Data Scientist', 'Cascade Corporation', 'Contract', 'Facilitates agile development processes including sprint planning and daily stand-ups and retrospectives to ensure timely delivery of software increments', 'Executive level', 'Swift', '$12.25', 'retirement plan', '222 Oakwood Ave', '2024-04-06');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Cybersecurity Analyst', 'Cascade Corporation', 'Internship', 'Oversees the strategic direction and management of an organization''s IT department including budgeting and staffing and technology initiatives', 'Senior level', 'Ruby', '$15.50', 'paid time off', '404 Birch Ct', '2024-06-20');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Web Developer', 'Sapphire Systems', 'Part-time', 'Manages IT operations and resources including infrastructure and systems and support services to meet business objectives and regulatory requirements', 'Senior level', 'JavaScript', '$10.00', 'health insurance', '333 Maplewood Dr', '2024-11-03');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Business Analyst', 'Innovative Solutions Co.', 'Seasonal', 'Designs high-level software structures and systems and defining technical standards and patterns and best practices to guide development teams', 'Executive level', 'Rust', '$10.00', 'dental coverage', '456 Elm St', '2024-11-14');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('IT Security Specialist', 'Innovative Solutions Co.', 'Temporary', 'Applies statistical analysis and machine learning and data mining techniques to extract insights and drive decision-making from large datasets', 'Executive level', 'C++', '$15.50', 'health insurance', '2121 Hickory Ave', '2024-05-18');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Network Administrator', 'Global Solutions Inc.', 'Contract', 'Implements and manages security measures to protect information systems and data assets including risk assessment vulnerability management and incident response', 'Senior level', 'Kotlin', '$18.00', 'retirement plan', '222 Oakwood Ave', '2024-08-01');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Cybersecurity Analyst', 'Golden Gate Ventures', 'Contract', 'Configures and maintains computer networks including routers and switches and firewalls to ensure reliable and secure connectivity', 'Executive level', 'Java', '$18.00', 'retirement plan', '707 Spruce Ave', '2024-08-31');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('QA Tester', 'Sunrise Technologies', 'Part-time', 'Designs and develops and tests software applications or components using programming languages and frameworks and development tools', 'Senior level', 'Ruby', '$15.50', 'paid time off', '999 Hickory Ln', '2024-08-09');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Cloud Architect', 'Silver Star Technologies', 'Part-time', 'Designs and develops as well as maintains software applications or systems according to project requirements and specifications', 'Executive level', 'Swift', '$20.75', 'employee discounts', '123 Main St', '2024-05-07');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Full Stack Developer', 'Crimson Consulting', 'Internship', 'Analyzes data to extract insights and identify trends as well as inform business decisions using statistical and data visualization techniques', 'Senior level', 'Swift', '$20.75', 'retirement plan', '1515 Elmwood Rd', '2024-09-24');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Back End Developer', 'Acme Corporation', 'Temporary', 'Leads the development and management of a product throughout its lifecycle from ideation to release ensuring alignment with business goals and customer needs', 'Executive level', 'Java', '$20.75', 'dental coverage', '888 Sprucewood Ave', '2024-12-03');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Back End Developer', 'Apex Innovations', 'Internship', 'Creates user-centered designs for digital products or interfaces focusing on usability and accessibility as well as user satisfaction', 'Senior level', 'Java', '$15.50', 'dental coverage', '555 Elmwood Ct', '2024-04-16');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('IT Project Manager', 'Titan Tech Group', 'Internship', 'Implements and manages continuous integration/continuous delivery (CI/CD) pipelines and automates infrastructure provisioning and ensures smooth collaboration between development and operations teams', 'Entry level', 'Scala', '$12.25', 'health insurance', '404 Birch Ct', '2024-11-16');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Database Administrator', 'Emerald Innovations', 'Contract', 'Tests software applications to identify defects and ensure functionality as well as maintain quality standards throughout the development lifecycle', 'Entry level', 'Scala', '$20.75', 'health insurance', '456 Elm St', '2024-07-11');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Developer', 'Apex Innovations', 'Internship', 'Provides technical assistance and troubleshooting support to users and resolving software as well as hardware issues via various communication channels', 'Senior level', 'PHP', '$12.25', 'employee discounts', '444 Cedarwood Ln', '2024-12-20');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('QA Tester', 'Sunrise Technologies', 'Temporary', 'Analyzes business requirements and processes to design and implement technology solutions that meet organizational objectives', 'Entry level', 'Java', '$12.25', 'paid time off', '222 Oakwood Ave', '2024-06-04');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Web Developer', 'Aurora Industries', 'Internship', 'Manages and maintains databases including installation and configuration as well as performance tuning and backup and recovery as well as security', 'Senior level', 'Swift', '$15.50', 'employee discounts', '808 Ash St', '2024-05-07');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('UI Designer', 'Global Solutions Inc.', 'Part-time', 'Designs and implements as well as manages computer networks including LANs and WANs as well as intranets to ensure connectivity and data integrity', 'Senior level', 'Python', '$20.75', 'dental coverage', '1717 Oakwood Ln', '2024-09-26');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('QA Tester', 'Vista Vision Corporation', 'Seasonal', 'Plans and executes as well as oversees IT projects which include scope definition and resource allocation as well as scheduling and risk management to achieve project objectives', 'Executive level', 'Kotlin', '$20.75', 'paid time off', '1717 Oakwood Ln', '2024-10-25');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('IT Security Specialist', 'Vista Vision Corporation', 'Contract', 'Monitors and detects as well as responds to security threats and incidents and implements security measures as well as conducts security assessments to protect organizational assets', 'Entry level', 'JavaScript', '$10.00', 'retirement plan', '111 Pinecrest Dr', '2024-11-21');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('UI Designer', 'Crimson Consulting', 'Seasonal', 'Designs and develops websites or web applications using programming languages and frameworks as well as web technologies', 'Entry level', 'Kotlin', '$12.25', 'dental coverage', '999 Hickory Ln', '2024-05-09');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Product Manager', 'Swift Solutions', 'Internship', 'Designs and develops mobile applications for iOS or Android platforms and ensuring performance and usability as well as compatibility', 'Mid-level', 'Java', '$12.25', 'dental coverage', '404 Birch Ct', '2024-10-28');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Architect', 'Global Solutions Inc.', 'Temporary', 'Designs and manages cloud infrastructure and services including cloud migration and scalability and security and cost optimization', 'Mid-level', 'Python', '$18.00', 'retirement plan', '1414 Birchwood Way', '2024-07-21');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Network Administrator', 'Acme Corporation', 'Part-time', 'Analyzes business processes identifies opportunities for improvement and translates business requirements into technical solutions', 'Mid-level', 'Rust', '$12.25', 'employee discounts', '999 Hickory Ln', '2024-09-27');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('UX Designer', 'Swift Solutions', 'Temporary', 'Provides expertise and advice on technology strategy and implementation and optimization to improve business performance and efficiency', 'Executive level', 'Kotlin', '$10.00', 'paid time off', '1212 Magnolia Dr', '2024-10-22');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Network Engineer', 'Sapphire Systems', 'Contract', 'Develops artificial intelligence (AI) algorithms and models and applications to solve complex problems and automate tasks', 'Mid-level', 'Scala', '$15.50', 'paid time off', '808 Ash St', '2024-10-01');
insert into Job_Posting (Position, CompanyName, EmploymentType, JobDescription, ExperienceLevel, RequiredSkills, Compensation, Benefits, WorkLocation, ApplicationDeadline) values ('Software Engineer', 'Crimson Consulting', 'Part-time', 'Designs and implements machine learning models and systems including data preprocessing and model training and evaluation', 'Senior level', 'C++', '$15.50', 'health insurance', '1414 Birchwood Way', '2024-07-07');

-- Create 'Applicant' table
CREATE TABLE Applicant (
    Applicant_ID SERIAL PRIMARY KEY,
    ApplicantName VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    LastUpdated TIMESTAMP
);

insert into Applicant (ApplicantName, Email, Phone, Address) values ('John Smith', 'john.smith@example.com', '113-325-8380', '123 Main St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Emily Johnson', 'emily.johnson@example.com', '869-929-8776', 'Anytown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Michael Williams', 'michael.williams@example.com', '774-300-6651', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jessica Brown', 'jessica.brown@example.com', '204-833-7824', '12345');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('William Jones', 'william.jones@example.com', '365-079-6946', '456 Elm St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ashley Davis', 'ashley.davis@example.com', '089-193-0627', 'Otherville');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('David Miller', 'david.miller@example.com', '556-686-0593', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Sarah Wilson', 'sarah.wilson@example.com', '749-855-3956', '67890');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('James Taylor', 'james.taylor@example.com', '236-189-7964', '789 Oak St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Olivia Martinez', 'olivia.martinez@example.com', '620-963-7432', 'Somecity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Robert Anderson', 'robert.anderson@example.com', '880-326-8476', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Emma Thomas', 'emma.thomas@example.com', '962-020-2627', '13579');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Daniel Jackson', 'daniel.jackson@example.com', '965-287-4924', '101 Pine St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Sophia White', 'sophia.white@example.com', '441-606-2887', 'Anycity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Christopher Harris', 'christopher.harris@example.com', '054-416-2383', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ava Garcia', 'ava.garcia@example.com', '454-802-7394', '24680');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Matthew Moore', 'matthew.moore@example.com', '619-645-6604', '202 Maple St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Isabella Lee', 'isabella.lee@example.com', '865-351-1924', 'Othertown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Joseph Rodriguez', 'joseph.rodriguez@example.com', '957-379-5362', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Mia Lopez', 'mia.lopez@example.com', '849-519-0630', '97531');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Andrew Thompson', 'andrew.thompson@example.com', '554-318-8829', '303 Cedar St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Charlotte Clark', 'charlotte.clark@example.com', '889-922-5140', 'Yourtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Joshua Lewis', 'joshua.lewis@example.com', '009-346-8371', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Madison Walker', 'madison.walker@example.com', '598-008-2762', '86420');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Samuel Hall', 'samuel.hall@example.com', '352-352-7884', '404 Birch St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Elizabeth Hill', 'elizabeth.hill@example.com', '778-292-8627', 'Theirtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Benjamin Martin', 'benjamin.martin@example.com', '798-191-5900', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Abigail Young', 'abigail.young@example.com', '864-170-7372', '75231');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ryan Scott', 'ryan.scott@example.com', '436-954-2382', '505 Walnut St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Grace Allen', 'grace.allen@example.com', '151-376-5479', 'Yourcity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jonathan King', 'jonathan.king@example.com', '178-857-6894', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Lily Wright', 'lily.wright@example.com', '872-825-3421', '64923');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Nicholas Turner', 'nicholas.turner@example.com', '116-355-0716', '606 Spruce St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Avery Nelson', 'avery.nelson@example.com', '061-691-3993', 'Mytown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Alexander Baker', 'alexander.baker@example.com', '131-465-9135', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Chloe Adams', 'chloe.adams@example.com', '227-464-1365', '35791');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ethan Green', 'ethan.green@example.com', '848-097-0184', '707 Ash St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Harper Rivera', 'harper.rivera@example.com', '934-266-0719', 'Theirtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Zachary Carter', 'zachary.carter@example.com', '950-439-3089', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Evelyn Torres', 'evelyn.torres@example.com', '215-800-9446', '46852');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Brandon Mitchell', 'brandon.mitchell@example.com', '841-507-5717', '808 Hickory St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Zoey Roberts', 'zoey.roberts@example.com', '469-093-2534', 'Anyvillage');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Tyler Phillips', 'tyler.phillips@example.com', '203-004-0597', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Natalie Campbell', 'natalie.campbell@example.com', '440-785-0074', '24680');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Christian Evans', 'christian.evans@example.com', '772-456-5456', '909 Cedar St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Victoria Reed', 'victoria.reed@example.com', '321-719-7849', 'Othertown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Gabriel Sanchez', 'gabriel.sanchez@example.com', '173-454-5453', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Hannah Ortiz', 'hannah.ortiz@example.com', '831-424-7809', '13579');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jackson Price', 'jackson.price@example.com', '260-912-6340', '111 Willow St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Audrey Perry', 'audrey.perry@example.com', '403-589-7416', 'Theirvillage');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jason Coleman', 'jason.coleman@example.com', '561-280-7875', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Samantha Bennett', 'samantha.bennett@example.com', '725-640-7682', '97531');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Caleb Rivera', 'caleb.rivera@example.com', '828-152-8511', '222 Elm St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Claire Flores', 'claire.flores@example.com', '449-196-2898', 'Mycity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Dylan Barnes', 'dylan.barnes@example.com', '191-190-1256', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Kaylee Simmons', 'kaylee.simmons@example.com', '423-437-6394', '86420');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Logan Ross', 'logan.ross@example.com', '983-246-5931', '333 Oak St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Maya Henderson', 'maya.henderson@example.com', '182-624-3523', 'Yourvillage');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Isaac Ramirez', 'isaac.ramirez@example.com', '692-952-6811', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Penelope Coleman', 'penelope.coleman@example.com', '851-698-0795', '64923');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Luke Patterson', 'luke.patterson@example.com', '060-438-2016', '444 Pine St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Stella Long', 'stella.long@example.com', '474-797-1330', 'Theircity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jack Foster', 'jack.foster@example.com', '008-098-1339', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ellie Cooper', 'ellie.cooper@example.com', '830-000-9662', '35791');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Gavin Hughes', 'gavin.hughes@example.com', '854-188-7687', '555 Maple St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Leah Howard', 'leah.howard@example.com', '827-173-8665', 'Myvillage');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Carter Morris', 'carter.morris@example.com', '773-256-4129', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Nora Bailey', 'nora.bailey@example.com', '277-929-3591', '46852');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Owen Barnes', 'owen.barnes@example.com', '617-400-5145', '666 Birch St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Riley Reed', 'riley.reed@example.com', '219-043-7907', 'Anytown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Lincoln Ward', 'lincoln.ward@example.com', '922-385-3073', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ariana Russell', 'ariana.russell@example.com', '652-010-8584', '24680');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Carson Diaz', 'carson.diaz@example.com', '621-495-5598', '777 Walnut St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Skylar Foster', 'skylar.foster@example.com', '820-537-4667', 'Othertown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Eli Sullivan', 'eli.sullivan@example.com', '755-826-8117', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Paisley Price', 'paisley.price@example.com', '781-553-9230', '13579');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Tristan Perry', 'tristan.perry@example.com', '625-249-6481', '888 Elm St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Naomi Powell', 'naomi.powell@example.com', '594-919-1854', 'Yourtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Camden Gray', 'camden.gray@example.com', '619-532-3485', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Eva Flores', 'eva.flores@example.com', '779-478-8533', '97531');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Easton Butler', 'easton.butler@example.com', '035-168-2436', '999 Oak St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Aria Griffin', 'aria.griffin@example.com', '613-789-7448', 'Anycity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Greyson Coleman', 'greyson.coleman@example.com', '398-441-7270', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Alaina Wood', 'alaina.wood@example.com', '089-546-5436', '86420');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Jaxon Bailey', 'jaxon.bailey@example.com', '146-046-8636', '1212 Main St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Clara Murphy', 'clara.murphy@example.com', '955-205-1655', 'Mytown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Dominic Parker', 'dominic.parker@example.com', '566-912-8058', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Ruby James', 'ruby.james@example.com', '715-201-1911', '64923');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Asher Bell', 'asher.bell@example.com', '428-469-1247', '1313 Pine St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Addison Russell', 'addison.russell@example.com', '405-781-3807', 'Theircity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Josiah Sanders', 'josiah.sanders@example.com', '444-463-2918', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Violet Mitchell', 'violet.mitchell@example.com', '888-827-9043', '35791');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Wyatt Baker', 'wyatt.baker@example.com', '544-041-4770', '1414 Maple St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Isla Stewart', 'isla.stewart@example.com', '481-697-7751', 'Othertown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Hunter Reed', 'hunter.reed@example.com', '418-199-7662', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Eleanor Hayes', 'eleanor.hayes@example.com', '953-882-1844', '46852');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Lincoln Cox', 'lincoln.cox@example.com', '666-439-2687', '1515 Oak St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Hailey Fisher', 'hailey.fisher@example.com', '165-961-4840', 'Yourcity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Sawyer Ward', 'sawyer.ward@example.com', '309-450-0533', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Piper Simmons', 'piper.simmons@example.com', '564-600-1848', '24680');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Noah Thompson', 'noah.thompson@example.com', '174-000-2932', '1616 Elm St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Sophia Brown', 'sophia.brown@example.com', '329-679-2297', 'Theirtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Mason Wilson', 'mason.wilson@example.com', '502-141-7984', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Harper Martinez', 'harper.martinez@example.com', '805-367-9315', '13579');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Elijah Anderson', 'elijah.anderson@example.com', '440-234-5317', '1717 Cedar St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Grace Thomas', 'grace.thomas@example.com', '097-639-7725', 'Anycity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Mia Jackson', 'mia.jackson@example.com', '556-035-5052', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Aiden White', 'aiden.white@example.com', '347-603-5722', '97531');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Amelia Harris', 'amelia.harris@example.com', '715-834-4149', '1818 Pine St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Carter Garcia', 'carter.garcia@example.com', '625-958-7049', 'Yourtown');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Evelyn Moore', 'evelyn.moore@example.com', '662-923-8962', 'USA');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Logan Rodriguez', 'logan.rodriguez@example.com', '660-684-8358', '86420');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Riley Walker', 'riley.walker@example.com', '084-662-3693', '1919 Walnut St');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('Lily Hill', 'lily.hill@example.com', '973-160-3808', 'Theircity');
insert into Applicant (ApplicantName, Email, Phone, Address) values ('William Young', 'william.young@example.com', '612-507-3995', 'USA');


-- Create Application table
CREATE TABLE Application (
    Application_ID SERIAL PRIMARY KEY,
    ApplicationStatus VARCHAR(50),
    LastUpdated TIMESTAMP,
    Job_ID INT REFERENCES Job_Posting(Job_ID),
    Applicant_ID INT REFERENCES Applicant(Applicant_ID),
    Resume_ID INT,
    AssignedTo_User_ID INT REFERENCES "User"(User_ID)
);

insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 28, 83, 83, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 23, 84, 84, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 5, 90, 90, 12);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 37, 58, 58, 3);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 26, 67, 67, 5);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 28, 1, 1, 9);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 42, 60, 60, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 14, 99, 99, 13);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 27, 31, 31, 2);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 5, 102, 102, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 7, 39, 39, 10);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 27, 44, 44, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 24, 66, 66, 5);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 5, 76, 76, 9);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 12, 30, 30, 2);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 13, 52, 52, 3);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 48, 2, 2, 10);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 28, 82, 82, 11);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 41, 6, 6, 2);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 22, 52, 52, 4);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 50, 57, 57, 1);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 17, 12, 12, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 35, 24, 24, 10);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 5, 8, 8, 4);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 18, 109, 109, 5);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 10, 50, 50, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 23, 36, 36, 8);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 28, 93, 93, 10);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 19, 57, 57, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 22, 45, 45, 6);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 49, 20, 20, 11);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 24, 4, 4, 6);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 36, 85, 85, 6);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Approved', 37, 18, 18, 7);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 3, 81, 81, 4);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 41, 32, 32, 13);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 10, 83, 83, 12);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 20, 25, 25, 4);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 49, 56, 56, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 14, 72, 72, 5);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Applied', 32, 35, 35, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 49, 2, 2, 15);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 31, 64, 64, 5);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 35, 40, 40, 9);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Expired', 48, 55, 55, 3);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Rejected', 43, 109, 109, 9);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Under Review', 24, 78, 78, 4);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 22, 87, 87, 3);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Cancelled', 31, 31, 31, 8);
insert into Application (ApplicationStatus, Job_ID, Applicant_ID, Resume_ID, AssignedTo_User_ID) values ('Pending', 45, 87, 87, 13);

-- Create Resume table
CREATE TABLE Resume (
    Resume_ID SERIAL PRIMARY KEY,
    DateSubmitted DATE,
    ResumeText TEXT,
    ReviewNotes TEXT,
    Location VARCHAR(255),
    Applicant_ID INT REFERENCES Applicant(Applicant_ID)
);

insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-31', 'John Smith
123 Main St, Anytown, USA, 12345
(123) 456-7890
john.smith@example.com

Objective:
Highly skilled software developer seeking a challenging position in a dynamic organization where I can utilize my technical expertise to contribute to the development and implementation of innovative software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Python, JavaScript
Technologies/Frameworks: Spring Boot, React, Angular
Databases: MySQL, MongoDB
Tools/IDEs: Eclipse, IntelliJ IDEA, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Software Developer, ABC Software Solutions, Anytown, USA, 20XX - Present
Developed and maintained web applications using Java and Spring Boot.
Implemented new features and resolved bugs to improve application performance.
Collaborated with cross-functional teams to deliver high-quality software products.
Projects:

Inventory Management System: Developed a web-based inventory management system using Java and Spring Boot. Managed database design and integration with MySQL.
E-commerce Website: Contributed to the development of an e-commerce website using React and Node.js. Implemented front-end components and integrated with back-end services.
Additional Information:

Received Employee of the Month award for outstanding performance and dedication.
', 'Proficient in Microsoft Office Suite', 'Tech Hub', 1);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-18', 'Emily Johnson
456 Elm St, Otherville, USA, 67890
(234) 567-8901
emily.johnson@example.com

Objective:
Passionate software developer with expertise in full-stack development seeking an opportunity to contribute my skills and knowledge to a forward-thinking organization.

Education:

Master of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: C#, JavaScript, SQL
Technologies/Frameworks: .NET Core, Angular, React
Databases: SQL Server, PostgreSQL
Tools/IDEs: Visual Studio, Visual Studio Code, SQL Server Management Studio
Operating Systems: Windows, macOS
Professional Experience:

Full Stack Developer, XYZ Tech Solutions, Otherville, USA, 20XX - Present
Designed and developed web applications using .NET Core and Angular.
Implemented RESTful APIs for data retrieval and manipulation.
Conducted code reviews and provided technical guidance to junior developers.
Projects:

Online Banking System: Led the development of an online banking system using .NET Core and Angular. Integrated with SQL Server for data storage and retrieval.
Customer Relationship Management (CRM) Application: Developed a CRM application using C# and React for managing customer interactions and sales processes.
Additional Information:

Completed Microsoft Certified: Azure Developer Associate certification.', 'Impressive experience in project management', 'Downtown Office', 2);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-21', 'Michael Williams
789 Oak St, Somecity, USA, 13579
(345) 678-9012
michael.williams@example.com

Objective:
Dynamic and results-oriented software engineer with a strong background in backend development seeking challenging opportunities to contribute my skills to impactful projects.

Education:

Bachelor of Engineering in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C++
Technologies/Frameworks: Django, Flask, Spring
Databases: PostgreSQL, SQLite
Tools/IDEs: PyCharm, Eclipse, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Innovations Inc., Somecity, USA, 20XX - Present
Designed and developed RESTful APIs for a large-scale web application using Django and Flask.
Optimized database queries and improved overall system performance.
Worked closely with frontend developers to integrate front-end components with backend services.
Projects:

Online Marketplace: Contributed to the development of an online marketplace using Django and PostgreSQL. Implemented user authentication, product listing, and checkout functionalities.
Inventory Management System: Designed and developed an inventory management system for a retail client using Flask and SQLite. Implemented features for inventory tracking and reporting.
Additional Information:

Participated in hackathons and won first prize for developing a real-time chat application.', 'Proficient in Microsoft Office Suite', 'Research Park', 3);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-05', 'Jessica Brown
101 Pine St, Anycity, USA, 24680
(456) 789-0123
jessica.brown@example.com

Objective:
Highly motivated software developer with a passion for creating efficient and scalable solutions. Seeking opportunities to leverage my skills and expertise in a collaborative team environment.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, TypeScript, PHP
Technologies/Frameworks: Node.js, Express, Laravel
Databases: MySQL, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, PHPStorm
Operating Systems: Windows, Linux
Professional Experience:

Software Engineer, Innovate Tech Solutions, Anycity, USA, 20XX - Present
Developed and maintained web applications using Node.js and Express.
Collaborated with frontend developers to integrate backend services with front-end components.
Implemented authentication and authorization mechanisms using JWT tokens.
Projects:

Social Media Platform: Contributed to the development of a social media platform using Node.js and MongoDB. Implemented features for user registration, posting, and commenting.
E-commerce Website: Developed an e-commerce website using Laravel and MySQL. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences to stay updated with the latest industry trends.', 'Proficient in Microsoft Office Suite', 'Financial District', 4);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-05', 'William Jones
202 Maple St, Othertown, USA, 97531
(567) 890-1234
william.jones@example.com

Objective:
Experienced software engineer with a focus on front-end development, seeking a challenging role where I can utilize my skills to create engaging and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Technologies/Frameworks: React, Vue.js, Angular
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Othertown, USA, 20XX - Present
Developed responsive and interactive user interfaces using React and Vue.js.
Collaborated with UI/UX designers to implement designs and ensure a seamless user experience.
Conducted performance optimization and cross-browser compatibility testing.
Projects:

Online Learning Platform: Developed the frontend of an online learning platform using React. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the frontend development of an e-commerce website using Vue.js. Integrated with backend APIs for product listing and checkout.
Additional Information:

Active contributor to open-source projects on GitHub.', 'Attention to detail', 'Innovation Center', 5);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-07', 'Ashley Davis
303 Cedar St, Yourtown, USA, 86420
(678) 901-2345
ashley.davis@example.com

Objective:
Dynamic and detail-oriented software engineer with a passion for building scalable and reliable systems. Seeking opportunities to leverage my expertise in backend development to drive innovation and efficiency.

Education:

Bachelor of Engineering in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, Go
Technologies/Frameworks: Django, Spring Boot, Flask
Databases: PostgreSQL, MySQL, Redis
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio Code
Operating Systems: Linux, macOS
Professional Experience:

Backend Developer, Tech Innovations Inc., Yourtown, USA, 20XX - Present
Designed and developed RESTful APIs for a cloud-based application using Django and Flask.
Optimized database queries and ensured data consistency using PostgreSQL and Redis.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Cloud Storage Service: Led the backend development of a cloud storage service using Django and PostgreSQL. Implemented file upload/download functionality and user authentication.
Real-time Chat Application: Developed a real-time chat application using Flask and Redis. Implemented WebSocket communication for instant messaging.
Additional Information:

Completed Google Cloud Platform certification for Cloud Engineer.', 'Proficient in Microsoft Office Suite', 'Business Park', 6);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-03', 'David Miller
404 Birch St, Theirtown, USA, 75231
(789) 012-3456
david.miller@example.com

Objective:
Results-driven software engineer with expertise in full-stack development, seeking a challenging role where I can leverage my skills to deliver high-quality software solutions.

Education:

Master of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, JavaScript, Python
Technologies/Frameworks: Spring Boot, Angular, React
Databases: MySQL, MongoDB
Tools/IDEs: Eclipse, Visual Studio Code, IntelliJ IDEA
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Innovate Tech Solutions, Theirtown, USA, 20XX - Present
Developed and maintained web applications using Java Spring Boot and Angular.
Implemented RESTful APIs for data retrieval and manipulation.
Collaborated with cross-functional teams to deliver scalable and efficient software solutions.
Projects:

Hospital Management System: Led the development of a hospital management system using Java Spring Boot. Designed database schema and implemented user authentication.
E-commerce Platform: Contributed to the development of an e-commerce platform using Angular and Node.js. Integrated with payment gateways and implemented order processing functionalities.
Additional Information:

Participated in hackathons and coding competitions, winning several awards for innovative solutions.', 'Proficient in Microsoft Office Suite', 'Corporate Headquarters', 7);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-25', 'Sarah Wilson
505 Walnut St, Yourcity, USA, 64923
(890) 123-4567
sarah.wilson@example.com

Objective:
Passionate software developer with expertise in mobile app development, seeking a challenging role to utilize my skills and contribute to the creation of innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Technologies/Frameworks: Android SDK, iOS SDK, React Native
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Tech Innovations Inc., Yourcity, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement user-friendly interfaces and enhance user experience.
Conducted code reviews and performed testing to ensure app quality and performance.
Projects:

Fitness Tracking App: Led the development of a fitness tracking app for Android and iOS platforms using Kotlin and Swift. Implemented features for workout logging, progress tracking, and goal setting.
E-commerce Mobile App: Contributed to the development of an e-commerce mobile app using React Native. Integrated with backend APIs for product listing, shopping cart, and checkout.
Additional Information:

Actively contribute to mobile development communities and stay updated with the latest trends and technologies.', 'Proficient in Microsoft Office Suite', 'Tech Campus', 8);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-08-30', 'James Taylor
606 Spruce St, Mytown, USA, 35791
(901) 234-5678
james.taylor@example.com

Objective:
Experienced software engineer specializing in cloud computing, seeking a challenging role to leverage my skills and expertise in designing and implementing scalable and reliable cloud-based solutions.

Education:

Master of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Mytown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Impressive experience in project management', 'Creative Studio', 9);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-03-09', 'Olivia Martinez
707 Ash St, Theirtown, USA, 46852
(234) 567-8901
olivia.martinez@example.com

Objective:
Dynamic and innovative software engineer with a focus on artificial intelligence and machine learning, seeking a challenging role to apply my expertise in developing intelligent and data-driven solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, R, Java
Machine Learning Libraries: TensorFlow, PyTorch, scikit-learn
Data Visualization: Matplotlib, Seaborn, Tableau
Tools/IDEs: Jupyter Notebook, Spyder, IntelliJ IDEA
Operating Systems: Windows, macOS
Professional Experience:

Machine Learning Engineer, AI Innovations Inc., Theirtown, USA, 20XX - Present
Developed and deployed machine learning models for various applications, including natural language processing, computer vision, and predictive analytics.
Conducted data preprocessing, feature engineering, and model training using Python and TensorFlow.
Collaborated with cross-functional teams to integrate machine learning solutions into production systems.
Projects:

Sentiment Analysis System: Led the development of a sentiment analysis system using natural language processing techniques. Trained machine learning models on large text datasets using TensorFlow and achieved high accuracy in sentiment classification.
Image Classification Model: Developed an image classification model using convolutional neural networks (CNNs) for identifying objects in images. Utilized TensorFlow and transfer learning for efficient model training and deployment.
Additional Information:

Actively participate in machine learning communities and research groups, contributing to open-source projects and publications.', 'Strong communication skills', 'Science Park', 10);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-01', 'Robert Anderson
808 Hickory St, Anyvillage, USA, 24680
(345) 678-9012
robert.anderson@example.com

Objective:
Results-oriented software engineer with a strong background in data analytics, seeking a challenging role to apply my analytical skills and expertise in deriving valuable insights from data.

Education:

Master of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, SQL, R
Data Analysis Tools: Pandas, NumPy, MATLAB
Data Visualization: Matplotlib, Seaborn, Plotly
Databases: MySQL, PostgreSQL, MongoDB
Tools/IDEs: Jupyter Notebook, PyCharm, RStudio
Operating Systems: Windows, Linux
Professional Experience:

Data Analyst, Analytics Solutions Co., Anyvillage, USA, 20XX - Present
Analyzed large datasets to extract actionable insights and drive business decisions.
Developed and maintained data pipelines for data collection, processing, and analysis.
Created interactive dashboards and reports for stakeholders using visualization tools like Tableau and Power BI.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis for an e-commerce company using clustering algorithms. Identified distinct customer segments based on purchasing behavior and demographics.
Predictive Maintenance Model: Developed a predictive maintenance model for equipment failure prediction using machine learning techniques. Analyzed sensor data and implemented predictive models to detect anomalies and prevent downtime.
Additional Information:

Completed Microsoft Certified: Data Analyst Associate certification.', 'Impressive experience in project management', 'Design Lab', 11);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-05-25', 'Emma Thomas
909 Cedar St, Othertown, USA, 13579
(456) 789-0123
emma.thomas@example.com

Objective:
Motivated software developer with a focus on web development, seeking an opportunity to utilize my skills and creativity to build responsive and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.
', 'Proficient in Microsoft Office Suite', 'Engineering Center', 12);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-27', 'Daniel Jackson
111 Willow St, Theirvillage, USA, 97531
(567) 890-1234
daniel.jackson@example.com

Objective:
Dynamic software engineer with expertise in backend development, seeking a challenging role to leverage my skills and contribute to the design and implementation of scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Python, C++
Web Development Frameworks: Spring Boot, Django, Flask
Databases: MySQL, PostgreSQL, MongoDB
Tools/IDEs: IntelliJ IDEA, PyCharm, Visual Studio Code
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Innovations Inc., Theirvillage, USA, 20XX - Present
Designed and developed RESTful APIs for web applications using Spring Boot and Django.
Optimized database queries and ensured data consistency using SQL and NoSQL databases.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Banking System: Led the development of an online banking system using Spring Boot. Designed database schema and implemented user authentication.
Inventory Management System: Developed an inventory management system for a retail client using Django. Implemented features for inventory tracking and reporting.
Additional Information:

Actively participate in coding competitions and hackathons, winning several awards for innovative solutions.
', 'Excellent team player', 'Development Hub', 13);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-18', 'Sophia White
222 Elm St, Mycity, USA, 86420
(678) 901-2345
sophia.white@example.com

Objective:
Innovative software engineer with a passion for mobile app development, seeking an opportunity to utilize my skills and expertise to create engaging and impactful mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Mycity, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and user-friendly interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Attention to detail', 'Media Lab', 14);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-08-27', 'Christopher Harris
333 Pine St, Anytown, USA, 35791
(901) 234-5678
christopher.harris@example.com

Objective:
Results-driven software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Anytown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Digital Agency', 15);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-04-10', 'Ava Garcia
444 Oak St, Othertown, USA, 46852
(234) 567-8901
ava.garcia@example.com

Objective:
Dynamic and detail-oriented software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative software solutions.

Education:

Bachelor of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Othertown, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Impressive experience in project management', 'Production Facility', 16);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-06', 'Matthew Moore
555 Maple St, Yourcity, USA, 97531
(567) 890-1234
matthew.moore@example.com

Objective:
Innovative software engineer with a passion for data science, seeking a challenging role where I can apply my analytical skills and expertise to extract valuable insights from data.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, R, SQL
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Plotly
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Scientist, Data Analytics Co., Yourcity, USA, 20XX - Present
Conducted exploratory data analysis and built predictive models to solve business problems.
Developed and deployed machine learning models for various applications, including customer segmentation and demand forecasting.
Communicated findings and insights to stakeholders through visualizations and presentations.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using K-means clustering. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data science communities and attend workshops and seminars.
', 'Strong communication skills', 'Software Lab', 17);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-02', '
Resume 15:

Christopher Harris
333 Pine St, Anytown, USA, 35791
(901) 234-5678
christopher.harris@example.com

Objective:
Results-driven software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Anytown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
Resume 16:

Ava Garcia
444 Oak St, Othertown, USA, 46852
(234) 567-8901
ava.garcia@example.com

Objective:
Dynamic and detail-oriented software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative software solutions.

Education:

Bachelor of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Othertown, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.
Resume 17:

Matthew Moore
555 Maple St, Yourcity, USA, 97531
(567) 890-1234
matthew.moore@example.com

Objective:
Innovative software engineer with a passion for data science, seeking a challenging role where I can apply my analytical skills and expertise to extract valuable insights from data.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, R, SQL
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Plotly
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Scientist, Data Analytics Co., Yourcity, USA, 20XX - Present
Conducted exploratory data analysis and built predictive models to solve business problems.
Developed and deployed machine learning models for various applications, including customer segmentation and demand forecasting.
Communicated findings and insights to stakeholders through visualizations and presentations.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using K-means clustering. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data science communities and attend workshops and seminars.
Resume 18:

Isabella Lee
606 Cedar St, Theirtown, USA, 24680
(345) 678-9012
isabella.lee@example.com

Objective:
Motivated software developer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and interactive user interfaces.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Theirtown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Strong communication skills', 'Marketing Office', 18);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-09', 'Joseph Rodriguez
707 Elm St, Myvillage, USA, 13579
(456) 789-0123
joseph.rodriguez@example.com

Objective:
Dynamic software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Myvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Impressive experience in project management', 'Data Center', 19);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-20', 'Mia Lopez
808 Birch St, Yourtown, USA, 97531
(567) 890-1234
mia.lopez@example.com

Objective:
Highly motivated software engineer with a strong background in cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Yourtown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Proficient in Microsoft Office Suite', 'R&D Center', 20);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-04', 'Andrew Thompson
101 Oak St, Anytown, USA, 35791
(901) 234-5678
andrew.thompson@example.com

Objective:
Innovative software engineer with a passion for data analysis, seeking a challenging role where I can apply my analytical skills and expertise to derive actionable insights from complex datasets.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, SQL, R
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Tableau
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Analyst, Analytics Solutions Co., Anytown, USA, 20XX - Present
Analyzed and interpreted complex datasets to identify trends and patterns.
Developed predictive models and conducted statistical analysis to support business decisions.
Created interactive dashboards and reports for stakeholders using visualization tools like Tableau and Power BI.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using clustering algorithms. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data analysis communities and attend workshops and semina', 'Impressive experience in project management', 'Operations Center', 21);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-03-05', 'Charlotte Clark
202 Elm St, Theircity, USA, 97531
(567) 890-1234
charlotte.clark@example.com

Objective:
Dynamic software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative and impactful software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Theircity, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Proficient in Microsoft Office Suite', 'Product Studio', 22);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-06', 'Joshua Lewis
303 Cedar St, Yourcity, USA, 24680
(345) 678-9012
joshua.lewis@example.com

Objective:
Results-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Strong communication skills', 'Technology Park', 23);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-11', 'Madison Walker
404 Birch St, Othertown, USA, 86420
(678) 901-2345
madison.walker@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Attention to detail', 'IT Department', 24);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-23', 'Samuel Hall
505 Pine St, Mytown, USA, 46852
(234) 567-8901
samuel.hall@example.com

Objective:
Experienced software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Mytown, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Proficient in Microsoft Office Suite', 'Innovation Hub', 25);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-24', 'Elizabeth Hill
606 Walnut St, Anyvillage, USA, 97531
(567) 890-1234
elizabeth.hill@example.com

Objective:
Motivated software engineer with a passion for data analysis, seeking a challenging role where I can apply my analytical skills and expertise to derive valuable insights from complex datasets.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, SQL, R
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Tableau
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Analyst, Analytics Solutions Co., Anyvillage, USA, 20XX - Present
Analyzed and interpreted complex datasets to identify trends and patterns.
Developed predictive models and conducted statistical analysis to support business decisions.
Created interactive dashboards and reports for stakeholders using visualization tools like Tableau and Power BI.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using clustering algorithms. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data analysis communities and attend workshops and seminars.', 'Attention to detail', 'Corporate Office', 26);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-14', 'Benjamin Martin
707 Maple St, Othertown, USA, 24680
(345) 678-9012
benjamin.martin@example.com

Objective:
Detail-oriented software engineer with a focus on full-stack development, seeking a challenging role where I can utilize my skills to design and implement scalable and efficient software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Othertown, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Attention to detail', 'Software Factory', 27);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-05-24', 'Abigail Young
808 Pine St, Yourcity, USA, 35791
(901) 234-5678
abigail.young@example.com

Objective:
Results-driven software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Attention to detail', 'Tech Center', 28);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-04', 'Ryan Scott
101 Cedar St, Theircity, USA, 86420
(678) 901-2345
ryan.scott@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Theircity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Excellent team player', 'Startup Incubator', 29);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-25', 'Grace Allen
404 Elm St, Mytown, USA, 97531
(567) 890-1234
grace.allen@example.com

Objective:
Experienced software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Mytown, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Impressive experience in project management', 'Business Incubator', 30);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-12', 'Jonathan King
505 Oak St, Anyvillage, USA, 35791
(901) 234-5678
jonathan.king@example.com

Objective:
Results-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Research Institute', 31);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-13', 'Lily Wright
606 Pine St, Othertown, USA, 24680
(345) 678-9012
lily.wright@example.com

Objective:
Dynamic software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative and impactful software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Othertown, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Proficient in Microsoft Office Suite', 'Innovation Lab', 32);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-28', 'Nicholas Turner
707 Cedar St, Yourcity, USA, 97531
(567) 890-1234
nicholas.turner@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can utilize my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Attention to detail', 'Engineering Lab', 33);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-10-14', 'Avery Nelson
808 Walnut St, Mytown, USA, 46852
(234) 567-8901
avery.nelson@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Mytown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Excellent team player', 'Digital Studio', 34);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-10-23', 'Alexander Baker
101 Elm St, Anyvillage, USA, 97531
(567) 890-1234
alexander.baker@example.com

Objective:
Experienced software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Impressive experience in project management', 'Tech Campus', 35);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-02', 'Chloe Adams
202 Oak St, Othertown, USA, 35791
(901) 234-5678
chloe.adams@example.com

Objective:
Highly motivated software engineer with a strong background in cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Engineering, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Excellent team player', 'Development Center', 36);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-20', 'Ethan Green
303 Pine St, Yourcity, USA, 24680
(345) 678-9012
ethan.green@example.com

Objective:
Innovative software engineer with a passion for data analysis, seeking a challenging role where I can apply my analytical skills and expertise to derive actionable insights from complex datasets.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, SQL, R
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Tableau
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Analyst, Analytics Solutions Co., Yourcity, USA, 20XX - Present
Analyzed and interpreted complex datasets to identify trends and patterns.
Developed predictive models and conducted statistical analysis to support business decisions.
Created interactive dashboards and reports for stakeholders using visualization tools like Tableau and Power BI.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using clustering algorithms. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data analysis communities and attend workshops and seminars.', 'Attention to detail', 'Financial Hub', 37);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-04', 'Harper Rivera
404 Cedar St, Anyvillage, USA, 97531
(567) 890-1234
harper.rivera@example.com

Objective:
Dynamic software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative and impactful software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Anyvillage, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Strong communication skills', 'Science Institute', 38);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-21', 'Zachary Carter
505 Walnut St, Othertown, USA, 35791
(901) 234-5678
zachary.carter@example.com

Objective:
Results-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Excellent team player', 'Design Studio', 39);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-10-07', 'Evelyn Torres
606 Cedar St, Yourcity, USA, 86420
(345) 678-9012
evelyn.torres@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.
', 'Excellent team player', 'Technology Hub', 40);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-10-11', 'Brandon Mitchell
808 Oak St, Anyvillage, USA, 97531
(567) 890-1234
brandon.mitchell@example.com

Objective:
Detail-oriented software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Proficient in Microsoft Office Suite', 'Software Development Center', 41);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-03', 'Zoey Roberts
101 Pine St, Othertown, USA, 24680
(345) 678-9012
zoey.roberts@example.com

Objective:
Dynamic software engineer with expertise in cloud computing, seeking a challenging role where I can utilize my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Strong communication skills', 'Innovation Center', 42);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-15', 'Tyler Phillips
303 Cedar St, Yourcity, USA, 97531
(567) 890-1234
tyler.phillips@example.com

Objective:
Results-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Tech Park', 43);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-26', 'Natalie Campbell
404 Walnut St, Mytown, USA, 35791
(901) 234-5678
natalie.campbell@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Mytown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Strong communication skills', 'Business District', 44);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-25', 'Christian Evans
505 Elm St, Anyvillage, USA, 24680
(345) 678-9012
christian.evans@example.com

Objective:
Experienced software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Proficient in Microsoft Office Suite', 'IT Hub', 45);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-27', 'Victoria Reed
606 Oak St, Othertown, USA, 97531
(567) 890-1234
victoria.reed@example.com

Objective:
Dedicated software engineer with a focus on cloud computing, seeking a challenging role where I can utilize my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Attention to detail', 'Creative Agency', 46);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-18', 'Gabriel Sanchez
707 Pine St, Yourcity, USA, 35791
(901) 234-5678
gabriel.sanchez@example.com

Objective:
Highly motivated software engineer with a passion for data analysis, seeking a challenging role where I can apply my analytical skills and expertise to derive actionable insights from complex datasets.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, SQL, R
Data Analysis Tools: Pandas, NumPy, scikit-learn
Data Visualization: Matplotlib, Seaborn, Tableau
Databases: MySQL, PostgreSQL, SQLite
Tools/IDEs: Jupyter Notebook, RStudio, Visual Studio Code
Operating Systems: Windows, Linux
Professional Experience:

Data Analyst, Analytics Solutions Co., Yourcity, USA, 20XX - Present
Analyzed and interpreted complex datasets to identify trends and patterns.
Developed predictive models and conducted statistical analysis to support business decisions.
Created interactive dashboards and reports for stakeholders using visualization tools like Tableau and Power BI.
Projects:

Customer Segmentation Analysis: Conducted customer segmentation analysis using clustering algorithms. Identified distinct customer segments based on purchasing behavior and demographics.
Sales Forecasting Model: Developed a sales forecasting model using time series analysis. Utilized ARIMA and Prophet models to predict future sales trends.
Additional Information:

Actively participate in data analysis communities and attend workshops and seminars.', 'Proficient in Microsoft Office Suite', 'Production Studio', 47);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-24', 'Hannah Ortiz
808 Cedar St, Anyvillage, USA, 24680
(345) 678-9012
hannah.ortiz@example.com

Objective:
Innovative software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative and impactful software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Anyvillage, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.
', 'Excellent team player', 'Engineering Department', 48);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-12', 'Jackson Price
101 Walnut St, Othertown, USA, 97531
(567) 890-1234
jackson.price@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Attention to detail', 'Data Analytics Center', 49);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-10', 'Audrey Perry
303 Oak St, Anyvillage, USA, 35791
(901) 234-5678
audrey.perry@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Proficient in Microsoft Office Suite', 'Digital Innovation Hub', 50);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-10', 'Caleb Rivera
404 Pine St, Yourcity, USA, 24680
(345) 678-9012
caleb.rivera@example.com

Objective:
Results-oriented software engineer with a focus on mobile app development, seeking an opportunity to leverage my skills and expertise to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with UI/UX designers to implement intuitive and engaging user interfaces.
Conducted unit testing and debugging to ensure app quality and performance.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms using Kotlin and Swift. Implemented features for user profiles, messaging, and content sharing.
Fitness Tracking App: Contributed to the development of a fitness tracking app using Java and Android SDK. Integrated with wearable devices and implemented activity tracking functionalities.
Additional Information:

Actively participate in mobile development communities and stay updated with the latest trends and technologies.', 'Attention to detail', 'Technology Incubator', 51);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-07-13', 'Claire Flores
505 Cedar St, Anyvillage, USA, 97531
(567) 890-1234
claire.flores@example.com

Objective:
Dynamic software engineer with expertise in cloud computing, seeking a challenging role where I can utilize my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Proficient in Microsoft Office Suite', 'Software Engineering Lab', 52);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-10', 'Dylan Barnes
606 Pine St, Othertown, USA, 35791
(901) 234-5678
dylan.barnes@example.com

Objective:
Results-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Attention to detail', 'Development Studio', 53);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-23', 'Kaylee Simmons
707 Oak St, Yourcity, USA, 24680
(345) 678-9012
kaylee.simmons@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Proficient in Microsoft Office Suite', 'Research Hub', 54);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-19', 'Logan Ross
808 Pine St, Othertown, USA, 97531
(567) 890-1234
logan.ross@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Corporate Headquarters', 55);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-06', 'Maya Henderson
101 Cedar St, Anyvillage, USA, 35791
(901) 234-5678
maya.henderson@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills to create innovative and user-friendly mobile applications that positively impact users lives.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Inc., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Implemented features such as user authentication, data synchronization, and push notifications.
Conducted code reviews and provided technical guidance to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented real-time data synchronization and collaborative features.
Additional Information:

Actively participate in hackathons and mobile development communities.', 'Impressive experience in project management', 'Tech Lab', 56);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-07', 'Isaac Ramirez
202 Pine St, Othertown, USA, 97531
(567) 890-1234
isaac.ramirez@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my expertise to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Solutions Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Impressive experience in project management', 'Innovation Studio', 57);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-03', 'Penelope Coleman
303 Elm St, Yourcity, USA, 24680
(345) 678-9012
penelope.coleman@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Proficient in Microsoft Office Suite', 'Engineering Workshop', 58);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-08', 'Luke Patterson
404 Cedar St, Anyvillage, USA, 35791
(901) 234-5678
luke.patterson@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Attention to detail', 'Financial Office', 59);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-08', 'Stella Long
505 Oak St, Othertown, USA, 97531
(567) 890-1234
stella.long@example.com

Objective:
Dynamic software engineer with expertise in full-stack development, seeking a challenging role to leverage my skills and contribute to the creation of innovative and impactful software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Othertown, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.', 'Excellent team player', 'Science Center', 60);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-21', 'Jack Foster
606 Cedar St, Anyvillage, USA, 24680
(345) 678-9012
jack.foster@example.com

Objective:
Innovative software engineer with a passion for mobile app development, seeking a challenging role where I can leverage my skills and expertise to create cutting-edge and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and implemented best practices for mobile app development.
Projects:

Social Networking App: Led the development of a social networking app for Android and iOS platforms. Implemented features for user authentication, news feed, and chat messaging.
E-commerce Mobile App: Contributed to the development of an e-commerce mobile app using Firebase as the backend. Implemented features for product browsing, shopping cart, and order tracking.
Additional Information:

Actively participate in mobile development communities and attend workshops to stay updated with emerging technologies.', 'Impressive experience in project management', 'Design Center', 61);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-06', 'Ellie Cooper
707 Elm St, Othertown, USA, 35791
(901) 234-5678
ellie.cooper@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can utilize my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Strong communication skills', 'Technology Campus', 62);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-26', 'Gavin Hughes
808 Oak St, Yourcity, USA, 97531
(567) 890-1234
gavin.hughes@example.com

Objective:
Dynamic software engineer with expertise in full-stack development, seeking a challenging role where I can utilize my skills to design and implement innovative and scalable software solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, Python, Java
Web Development Frameworks: React, Node.js, Spring Boot
Databases: MongoDB, MySQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, Eclipse
Operating Systems: Windows, Linux
Professional Experience:

Full Stack Developer, Tech Innovations Inc., Yourcity, USA, 20XX - Present
Developed and maintained web applications using React and Node.js.
Designed and implemented RESTful APIs for data retrieval and manipulation.
Collaborated with frontend developers to integrate back-end services with front-end components.
Projects:

Online Learning Platform: Led the development of an online learning platform using React and Node.js. Implemented features for course enrollment, progress tracking, and quizzes.
E-commerce Website: Contributed to the development of an e-commerce website using Spring Boot and MongoDB. Integrated payment gateways and implemented order management functionalities.
Additional Information:

Actively participate in tech meetups and conferences.
', 'Impressive experience in project management', 'Media Production Studio', 63);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-21', 'Leah Howard
101 Pine St, Anyvillage, USA, 24680
(345) 678-9012
leah.howard@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Anyvillage, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Proficient in Microsoft Office Suite', 'Software Development Studio', 64);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-23', 'Carter Morris
202 Cedar St, Othertown, USA, 35791
(901) 234-5678
carter.morris@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Innovation Space', 65);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-19', 'Nora Bailey
303 Pine St, Yourcity, USA, 97531
(567) 890-1234
nora.bailey@example.com

Objective:
Detail-oriented software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and impactful mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Realm
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Yourcity, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Realm as the local database. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Strong communication skills', 'Tech Workshop', 66);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-04', 'Owen Barnes
404 Oak St, Anyvillage, USA, 24680
(345) 678-9012
owen.barnes@example.com

Objective:
Dynamic software engineer with expertise in cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Proficient in Microsoft Office Suite', 'Digital Marketing Agency', 67);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-16', 'Riley Reed
505 Cedar St, Othertown, USA, 35791
(901) 234-5678
riley.reed@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Impressive experience in project management', 'Data Science Lab', 68);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-28', 'Lincoln Ward
606 Pine St, Yourcity, USA, 97531
(567) 890-1234
lincoln.ward@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'R&D Facility', 69);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-08', 'Ariana Russell
707 Elm St, Othertown, USA, 24680
(345) 678-9012
ariana.russell@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Othertown, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.
', 'Proficient in Microsoft Office Suite', 'Technology Institute', 70);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-04-29', 'Carson Diaz
808 Oak St, Anyvillage, USA, 35791
(901) 234-5678
carson.diaz@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Attention to detail', 'Design Agency', 71);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-04', 'Skylar Foster
101 Pine St, Yourcity, USA, 97531
(567) 890-1234
skylar.foster@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Attention to detail', 'Software Engineering Department', 72);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-03', 'Eli Sullivan
202 Cedar St, Othertown, USA, 24680
(345) 678-9012
eli.sullivan@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Strong communication skills', 'Tech Incubator', 73);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-14', 'Paisley Price
303 Elm St, Anyvillage, USA, 35791
(901) 234-5678
paisley.price@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Strong communication skills', 'Business Innovation Center', 74);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-03-04', 'Tristan Perry
404 Oak St, Othertown, USA, 97531
(567) 890-1234
tristan.perry@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Attention to detail', 'Creative Workspace', 75);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-26', 'Naomi Powell
505 Cedar St, Yourcity, USA, 24680
(345) 678-9012
naomi.powell@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Strong communication skills', 'Technology Park', 76);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-17', 'Camden Gray
606 Pine St, Othertown, USA, 97531
(567) 890-1234
camden.gray@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Development Hub', 77);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-08-10', 'Eva Flores
707 Elm St, Anyvillage, USA, 35791
(901) 234-5678
eva.flores@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Strong communication skills', 'IT Services Center', 78);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-17', 'Easton Butler
808 Oak St, Anyvillage, USA, 24680
(345) 678-9012
easton.butler@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Strong communication skills', 'Product Development Center', 79);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-04-19', 'Aria Griffin
101 Pine St, Yourcity, USA, 97531
(567) 890-1234
aria.griffin@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Excellent team player', 'Research Center', 80);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-15', '
Resume 81:

Greyson Coleman
202 Cedar St, Othertown, USA, 24680
(345) 678-9012
greyson.coleman@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Impressive experience in project management', 'Innovation Lab', 81);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-06-12', 'Alaina Wood
303 Elm St, Anyvillage, USA, 35791
(901) 234-5678
alaina.wood@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Strong communication skills', 'Digital Agency', 82);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-01', 'Jaxon Bailey
404 Oak St, Othertown, USA, 97531
(567) 890-1234
jaxon.bailey@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Proficient in Microsoft Office Suite', 'Software Development Center', 83);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-05', 'Clara Murphy
505 Cedar St, Yourcity, USA, 24680
(345) 678-9012
clara.murphy@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Strong communication skills', 'Engineering Firm', 84);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-07-02', 'Dominic Parker
606 Pine St, Othertown, USA, 97531
(567) 890-1234
dominic.parker@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Attention to detail', 'Media Agency', 85);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-02', 'Ruby James
707 Elm St, Anyvillage, USA, 35791
(901) 234-5678
ruby.james@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Proficient in Microsoft Office Suite', 'Design Institute', 86);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-03-26', 'Asher Bell
808 Oak St, Anyvillage, USA, 24680
(345) 678-9012
asher.bell@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Proficient in Microsoft Office Suite', 'Digital Studio', 87);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-12', 'Addison Russell
101 Pine St, Yourcity, USA, 97531
(567) 890-1234
addison.russell@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.
', 'Impressive experience in project management', 'Technology Center', 88);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-04-12', 'Josiah Sanders
202 Cedar St, Othertown, USA, 24680
(345) 678-9012
josiah.sanders@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Excellent team player', 'Innovation Factory', 89);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-13', 'Violet Mitchell
303 Elm St, Anyvillage, USA, 35791
(901) 234-5678
violet.mitchell@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Proficient in Microsoft Office Suite', 'Software Company', 90);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-11', 'Wyatt Baker
404 Oak St, Othertown, USA, 97531
(567) 890-1234
wyatt.baker@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Excellent team player', 'Engineering Office', 91);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-10-16', 'Isla Stewart
505 Cedar St, Yourcity, USA, 24680
(345) 678-9012
isla.stewart@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.
', 'Proficient in Microsoft Office Suite', 'Tech Startup', 92);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-08-11', 'Hunter Reed
606 Pine St, Othertown, USA, 97531
(567) 890-1234
hunter.reed@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Impressive experience in project management', 'Research Lab', 93);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-29', 'Eleanor Hayes
707 Elm St, Anyvillage, USA, 35791
(901) 234-5678
eleanor.hayes@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Proficient in Microsoft Office Suite', 'Development Studio', 94);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-05-14', 'Lincoln Cox
808 Oak St, Anyvillage, USA, 24680
(345) 678-9012
lincoln.cox@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Anyvillage, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Excellent team player', 'IT Department', 95);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-27', 'Hailey Fisher
101 Pine St, Yourcity, USA, 97531
(567) 890-1234
hailey.fisher@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Proficient in Microsoft Office Suite', 'Innovation Lab', 96);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-21', 'Sawyer Ward
202 Cedar St, Othertown, USA, 24680
(345) 678-9012
sawyer.ward@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer, Tech Solutions Co., Othertown, USA, 20XX - Present
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Impressive experience in project management', 'Tech Firm', 97);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-08-01', 'Piper Simmons
303 Elm St, Anyvillage, USA, 35791
(901) 234-5678
piper.simmons@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications that enhance user experience.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer, Mobile Innovations Co., Anyvillage, USA, 20XX - Present
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Proficient in Microsoft Office Suite', 'Creative Agency', 98);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-11', 'Sofia White
404 Oak St, Othertown, USA, 97531
(567) 890-1234
sofia.white@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer, Cloud Innovations Co., Othertown, USA, 20XX - Present
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Proficient in Microsoft Office Suite', 'Digital Marketing Company', 99);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-19', 'Christopher Harris
505 Cedar St, Yourcity, USA, 24680
(345) 678-9012
christopher.harris@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer, Web Solutions Co., Yourcity, USA, 20XX - Present
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Excellent team player', 'Data Science Center', 100);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-09', 'Noah Thompson
123 Elm St, Anytown, USA, 12345
(555) 123-4567
noah.thompson@example.com

Objective:
Enthusiastic software engineer with a passion for creating efficient and scalable solutions, seeking a challenging role where I can leverage my skills and experience to contribute to innovative projects.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Web Development Frameworks: Django, Spring Boot, React
Databases: MySQL, MongoDB, PostgreSQL
Tools/IDEs: Visual Studio Code, IntelliJ IDEA, PyCharm
Operating Systems: Linux, Windows
Professional Experience:

Software Developer Intern, Tech Solutions Inc., Anytown, USA, 20XX - 20XX
Assisted in the development of web applications using Django and React.
Participated in code reviews and contributed to improving code quality.
Collaborated with team members to troubleshoot and resolve technical issues.
Projects:

E-commerce Website: Developed a fully functional e-commerce website using Django and React. Implemented features such as product listing, search functionality, and user authentication.
Task Management Application: Contributed to the development of a task management application using Spring Boot. Implemented RESTful APIs for task creation, assignment, and tracking.
Additional Information:

Active member of the programming club at university.
', 'Excellent team player', 'Software Development Lab', 101);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-20', 'Sophia Brown
456 Oak St, Othertown, USA, 54321
(555) 987-6543
sophia.brown@example.com

Objective:
Detail-oriented software engineer with a focus on front-end development, seeking a challenging role where I can utilize my skills to create engaging and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: MongoDB, Firebase
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer Intern, Web Solutions Co., Othertown, USA, 20XX - 20XX
Developed responsive user interfaces for web applications using React and Angular.
Collaborated with designers to implement design mockups into functional web interfaces.
Conducted usability testing and implemented feedback for UI/UX improvements.
Projects:

Social Media Dashboard: Led the development of a social media dashboard using React. Implemented features for real-time data visualization and user interaction.
E-commerce Website: Contributed to the frontend development of an e-commerce website using Angular. Implemented product browsing, filtering, and checkout functionalities.
Additional Information:

Enthusiastic learner with a strong interest in user experience design.', 'Proficient in Microsoft Office Suite', 'Tech Park', 102);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-08', 'Mason Wilson
789 Pine St, Yourcity, USA, 67890
(555) 234-5678
mason.wilson@example.com

Objective:
Motivated software engineer with a passion for backend development, seeking a challenging role where I can leverage my skills to design and implement robust and scalable server-side solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer Intern, Tech Innovations Inc., Yourcity, USA, 20XX - 20XX
Developed RESTful APIs for web applications using Django and Spring Boot.
Implemented database schema designs and optimized SQL queries for performance.
Collaborated with frontend developers to integrate backend services with user interfaces.
Projects:

Online Booking System: Led the development of an online booking system using Django. Implemented features for user registration, appointment scheduling, and payment processing.
Inventory Management System: Contributed to the backend development of an inventory management system using ASP.NET Core. Implemented APIs for managing inventory, orders, and suppliers.
Additional Information:

Strong problem-solving skills with a keen attention to detail.
', 'Impressive experience in project management', 'Design Studio', 103);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-01-14', 'Harper Martinez
012 Cedar St, Anycity, USA, 13579
(555) 345-6789
harper.martinez@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer Intern, Mobile Solutions Co., Anycity, USA, 20XX - 20XX
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided feedback to improve code quality and maintainability.
Projects:

Fitness Tracking App: Led the development of a fitness tracking app for Android. Implemented features for tracking workouts, setting goals, and monitoring progress.
Social Networking App: Contributed to the development of a social networking app for iOS. Implemented features for user profiles, messaging, and news feed.
Additional Information:

Active participant in hackathons and coding competitions.', 'Attention to detail', 'Technology Campus', 104);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-02-23', 'Elijah Anderson
234 Maple St, Othertown, USA, 24680
(555) 567-8901
elijah.anderson@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer Intern, Cloud Innovations Co., Othertown, USA, 20XX - 20XX
Assisted in designing and implementing cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided support to development teams for configuring and optimizing cloud resources.
Projects:

Scalable Web Application: Contributed to the development of a scalable web application deployed on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Assisted in deploying a data analytics platform on Google Cloud Platform. Utilized Google BigQuery and Dataflow for data processing and analysis.
Additional Information:

Strong problem-solving skills with a passion for learning new technologies.
', 'Excellent team player', 'Innovation Center', 105);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-03-01', 'Grace Thomas
345 Pine St, Anytown, USA, 97531
(555) 789-0123
grace.thomas@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer Intern, Web Solutions Co., Anytown, USA, 20XX - 20XX
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Impressive experience in project management', 'Tech Hub', 106);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-11-30', 'Mia Jackson
456 Oak St, Othertown, USA, 97531
(555) 901-2345
mia.jackson@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer Intern, Tech Solutions Co., Othertown, USA, 20XX - 20XX
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Proficient in Microsoft Office Suite', 'Software Development Studio', 107);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-17', 'Aiden White
678 Maple St, Yourcity, USA, 75319
(555) 234-5678
aiden.white@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer Intern, Mobile Innovations Co., Yourcity, USA, 20XX - 20XX
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.
', 'Excellent team player', 'Business Incubator', 108);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-22', 'Amelia Harris
890 Cedar St, Anytown, USA, 12345
(555) 456-7890
amelia.harris@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer Intern, Cloud Innovations Co., Anytown, USA, 20XX - 20XX
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.', 'Strong communication skills', 'Engineering Center', 109);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-01-18', 'Carter Garcia
123 Elm St, Othertown, USA, 97531
(555) 789-0123
carter.garcia@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer Intern, Web Solutions Co., Othertown, USA, 20XX - 20XX
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.', 'Impressive experience in project management', 'Innovation Hub', 110);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-07-01', 'Evelyn Moore
456 Maple St, Anycity, USA, 24680
(555) 901-2345
evelyn.moore@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer Intern, Tech Solutions Co., Anycity, USA, 20XX - 20XX
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.', 'Proficient in Microsoft Office Suite', 'Development Center', 111);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-09-29', 'Logan Rodriguez
789 Cedar St, Yourcity, USA, 35791
(555) 234-5678
logan.rodriguez@example.com

Objective:
Dynamic software engineer with expertise in mobile app development, seeking a challenging role where I can leverage my skills and experience to create innovative and user-friendly mobile applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: Java, Kotlin, Swift
Mobile Development Frameworks: Android SDK, iOS SDK
Databases: SQLite, Firebase
Tools/IDEs: Android Studio, Xcode, Visual Studio Code
Operating Systems: Windows, macOS
Professional Experience:

Mobile App Developer Intern, Mobile Innovations Co., Yourcity, USA, 20XX - 20XX
Developed and maintained mobile applications for Android and iOS platforms using Java, Kotlin, and Swift.
Collaborated with cross-functional teams to define requirements and deliver high-quality solutions.
Conducted code reviews and provided mentorship to junior developers.
Projects:

Health Tracking App: Led the development of a health tracking app for Android and iOS platforms. Implemented features for tracking exercise, nutrition, and sleep patterns.
Task Management App: Contributed to the development of a task management app using Firebase as the backend. Implemented features for task creation, assignment, and tracking.
Additional Information:

Actively participate in mobile development communities and attend tech conferences.', 'Proficient in Microsoft Office Suite', 'Research Institute', 112);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-12-13', 'Riley Walker
890 Oak St, Anycity, USA, 97531
(555) 345-6789
riley.walker@example.com

Objective:
Results-driven software engineer with a focus on cloud computing, seeking a challenging role where I can leverage my skills to design and implement scalable and reliable cloud-based solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, JavaScript
Cloud Platforms: AWS, Azure, Google Cloud Platform
Databases: Amazon RDS, Amazon DynamoDB, Google Cloud SQL
Tools/IDEs: AWS CLI, Azure CLI, Google Cloud SDK
Operating Systems: Linux, Windows
Professional Experience:

Cloud Solutions Engineer Intern, Cloud Innovations Co., Anycity, USA, 20XX - 20XX
Designed and implemented cloud-based solutions using AWS, Azure, and Google Cloud Platform.
Deployed and managed containerized applications using Docker and Kubernetes.
Provided technical guidance and support to development teams for cloud architecture and best practices.
Projects:

Scalable Web Application: Led the migration of a monolithic web application to a microservices architecture on AWS. Implemented auto-scaling and load balancing for improved performance and reliability.
Data Analytics Platform: Designed and deployed a data analytics platform on Azure for processing and analyzing large datasets. Utilized Azure Data Lake and Azure Databricks for data processing and machine learning.
Additional Information:

Completed AWS Certified Solutions Architect and Google Cloud Professional Architect certifications.
', 'Excellent team player', 'Data Analytics Lab', 113);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2023-03-07', 'Lily Hill
123 Pine St, Yourcity, USA, 12345
(555) 789-0123
lily.hill@example.com

Objective:
Motivated software engineer with a passion for front-end development, seeking an opportunity to utilize my skills and creativity to build visually appealing and user-friendly web applications.

Education:

Bachelor of Science in Computer Science, XYZ University, 20XX
Technical Skills:

Programming Languages: JavaScript, HTML, CSS
Web Development Frameworks: React, Angular, Vue.js
Databases: Firebase, MongoDB
Tools/IDEs: Visual Studio Code, Sublime Text, WebStorm
Operating Systems: Windows, macOS
Professional Experience:

Frontend Developer Intern, Web Solutions Co., Yourcity, USA, 20XX - 20XX
Developed and maintained web applications using modern JavaScript frameworks such as React and Angular.
Implemented responsive and intuitive user interfaces based on design mockups.
Collaborated with backend developers to integrate front-end components with RESTful APIs.
Projects:

Task Management Application: Led the development of a task management application using React. Implemented features for task creation, assignment, and tracking.
E-commerce Website: Contributed to the development of an e-commerce website using Angular. Integrated with backend APIs for product listing, shopping cart, and checkout functionalities.
Additional Information:

Actively participate in web development communities and stay updated with emerging technologies and best practices.




', 'Excellent team player', 'Design Agency', 114);
insert into Resume (DateSubmitted, ResumeText, ReviewNotes, Location, Applicant_ID) values ('2024-02-29', 'Resume 15:

William Young
456 Elm St, Anytown, USA, 35791
(555) 901-2345
william.young@example.com

Objective:
Detail-oriented software engineer with a focus on backend development, seeking a challenging role where I can leverage my skills to design and implement scalable and efficient server-side solutions.

Education:

Bachelor of Science in Computer Science, ABC University, 20XX
Technical Skills:

Programming Languages: Python, Java, C#
Web Development Frameworks: Django, Spring Boot, ASP.NET Core
Databases: PostgreSQL, MySQL, SQL Server
Tools/IDEs: PyCharm, IntelliJ IDEA, Visual Studio
Operating Systems: Linux, Windows
Professional Experience:

Backend Developer Intern, Tech Solutions Co., Anytown, USA, 20XX - 20XX
Developed and maintained RESTful APIs for web applications using Django and Spring Boot.
Optimized database queries and improved overall system performance.
Implemented authentication and authorization mechanisms for secure API access.
Projects:

Online Marketplace: Led the development of an online marketplace using Django. Implemented user authentication, product listing, and checkout functionalities.
CRM Application: Contributed to the development of a customer relationship management (CRM) application using ASP.NET Core. Designed database schema and implemented CRUD operations.
Additional Information:

Actively participate in coding communities and open-source projects.
', 'Impressive experience in project management', 'Software Lab', 115);

