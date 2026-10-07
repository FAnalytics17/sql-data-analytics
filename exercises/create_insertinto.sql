--Practice CREATE TABLE and INSERT INTO SELECT
CREATE TABLE customer_emails (
	emails VARCHAR(300)
    );
INSERT INTO customer_emails(emails)
SELECT email
FROM sakila.customer;


I learned above, write me a commit message
