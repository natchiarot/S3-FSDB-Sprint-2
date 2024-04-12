-- Create User table
CREATE TABLE "User" (
    User_ID SERIAL PRIMARY KEY,
    UserName VARCHAR(255),
    Position VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Location VARCHAR(255),
    Password VARCHAR(255),
    UNIQUE (UserName)
);


-- Mock Data Inserts:
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Laura Rodriguez', 'Director of Information Technology', 'example.email@example.com', '085-593-1922', '123 Main St', 'a#Sd6!rT9');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Emily Johnson', 'Engineering Manager', 'jane.smith@example.com', '115-670-5190', '123 Main St', 'p@3qL2wE1');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('David Thomas', 'IT Director', 'jane.smith@example.com', '042-717-4377', '101 Pine Rd', 'b%8Zx1@N4');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Elizabeth Lopez', 'Chief Technology Officer (CTO)', 'john.doe@example.com', '484-908-7372', '202 Maple Ln', '!k8Ys@2Dx');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Jennifer Martinez', 'Technical Lead', 'user456@example.com', '209-879-0896', '202 Maple Ln', 'd#R5g@7X9');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Robert Wilson', 'Software Development Manager', 'testuser123@example.com', '667-253-9783', '123 Main St', 'x&L3a@9B2');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Elizabeth Lopez', 'Product Manager', 'testuser123@example.com', '348-702-7117', '123 Main St', 'r%N1w@8Dy');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Emily Johnson', 'Chief Information Officer (CIO)', 'example.email@example.com', '401-173-9485', '456 Elm St', 'z!E7m@1Pq');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Laura Rodriguez', 'Engineering Manager', 'john.doe@example.com', '757-360-2362', '789 Oak Ave', 't@3Gx5!R8');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('John Smith', 'Technical Lead', 'example.email@example.com', '863-321-8982', '456 Elm St', 'm#S6t@9F4');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('William Anderson', 'Software Development Manager', 'example.email@example.com', '571-045-8026', '101 Pine Rd', 'p&Q8d@4W6');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Amanda Garcia', 'Director of Operations', 'testuser123@example.com', '715-599-2340', '202 Maple Ln', 'f!C2v@7Yq');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Daniel Martinez', 'IT Director', 'testuser123@example.com', '438-649-6019', '123 Main St', 'l@6Hs#9R4');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Matthew Perez', 'Chief Technology Officer (CTO)', 'user456@example.com', '754-045-0372', '101 Pine Rd', 'g&Q2v@8Hs');
-- insert into "User" (UserName, Position, Email, Phone, Location, Password) values ('Robert Wilson', 'Engineering Manager', 'example.email@example.com', '190-226-5622', '123 Main St', 'a#S6d@9Fq');


SELECT * FROM "User";
