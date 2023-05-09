CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(50), email VARCHAR(50));

INSERT INTO users (id, name,email) VALUES (2, 'Alber','Al@syr.edu');
INSERT INTO users (id, name,email) VALUES (3, 'Trishla','tjain@syr.edu');
INSERT INTO users (id, name,email) VALUES (4, 'Shaunak','sedakhe@syr.edu');
INSERT INTO users (id, name,email) VALUES (5, 'Shruti','svarma@syr.edu');
INSERT INTO users (id, name,email) VALUES (6, 'Alber','abc@syr.edu');

Update users set name = 'Abc' where id = 6;
SELECT * FROM users;

DELETE from users where email is null;
SELECT * FROM users;