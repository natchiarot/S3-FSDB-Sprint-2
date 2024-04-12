-- Create an index to help optimize text searaches on the resume table
CREATE INDEX resumetext_idx ON resume USING gin (to_tsvector('english', resumetext));
