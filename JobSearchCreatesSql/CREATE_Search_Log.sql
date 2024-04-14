CREATE TABLE Search_Logs (
    SearchLogs_ID SERIAL PRIMARY KEY,
    SearchDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    SearchTerms TEXT,
    Filters TEXT,
    User_ID INT REFERENCES "User"(User_ID)
);

SELECT * FROM search_logs;

