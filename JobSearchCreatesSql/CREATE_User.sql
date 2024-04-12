-- Create User table
CREATE TABLE "User" (
    User_ID SERIAL PRIMARY KEY,
    UserName VARCHAR(255) UNIQUE NOT NULL,
    Position VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Location VARCHAR(255),
    Password VARCHAR(255),
);


-- Mock Data Inserts:
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('SarahDavis', 'Engineering Manager', 'john.doe@example.com', '607-140-2479', '202 Maple Ln');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('DavidThomas', 'Business Development Manager', 'user456@example.com', '896-847-6459', '456 Elm St');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('EmilyJohnson', 'Chief Technology Officer (CTO)', 'example.email@example.com', '696-501-4546', '101 Pine Rd');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('DanielMartinez', 'Chief Technology Officer (CTO)', 'example.email@example.com', '044-657-4935', '456 Elm St');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('WilliamAnderson', 'IT Manager', 'example.email@example.com', '470-598-2220', '789 Oak Ave');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('RobertWilson', 'Chief Information Officer (CIO)', 'user456@example.com', '182-760-8565', '202 Maple Ln');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('JessicaTaylor', 'IT Manager', 'user456@example.com', '617-412-2987', '202 Maple Ln');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('JamesHernandez', 'Technical Lead', 'testuser123@example.com', '087-366-6211', '202 Maple Ln');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('LauraRodriguez', 'Product Manager', 'user456@example.com', '419-874-7561', '123 Main St');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('AmandaGarcia', 'Director of Operations', 'example.email@example.com', '721-827-4042', '456 Elm St');
-- INSERT INTO "User" (UserName, Position, Email, Phone, Location) VALUES ('JohnSmith', 'Director of Information Technology', 'user456@example.com', '376-507-7348', '101 Pine Rd');


SELECT * FROM "User";
