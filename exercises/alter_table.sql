-- ALTER TABLE
-- Practice exercises

-- Add a new column
ALTER TABLE rhlspareparts
ADD COLUMN boxNo VARCHAR(20);

-- Modify a column
ALTER TABLE rhlspareparts
MODIFY COLUMN description VARCHAR(30);

-- Rename a column
ALTER TABLE rhlspareparts
RENAME COLUMN Country_name TO description;
