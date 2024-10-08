CREATE TABLE member(
	id SERIAL PRIMARY KEY,
	name VARCHAR (40),
	card_number CHAR (10)
);

CREATE TABLE book(
	id SERIAL PRIMARY KEY,
	title VARCHAR (60),
	author VARCHAR (60),
	checked_out_by_id INT REFERENCES member(id)
);

INSERT INTO member (name, card_number)
VALUES ('Annabelle Aster', '772-93-110'),
('Boris Berceli', 000-00-000),
('Carter Corbin', '282-09-382');

INSERT INTO book (title, author, checked_out_by_id)
VALUES ('In  Search of Lost Time', 'Marcel Proust', 1),
('Ulysses', 'James Joyce', 1), 
('Don Quixote', 'Miguel de Cervantes', 3),
('Moby Dick', 'Herman Melville', NULL);

UPDATE member SET card_number = '357-15-964' 
WHERE id = 2;

DELETE FROM member 
WHERE id= 2;

SELECT * FROM member 
WHERE card_number = '772-93-110';

SELECT * FROM book
ORDER BY title;

UPDATE book SET checked_out_by_id = 1
WHERE title = 'Moby Dick';

UPDATE book SET checked_out_by_id = NULL
WHERE title = 'Ulysses'

SELECT * FROM book
JOIN member 
ON book.checked_out_by_id = member.id;

SELECT book.title 
FROM book
JOIN member ON book.checked_out_by_id = member.id
WHERE member.name = 'Annabelle Aster';

SELECT member.name, member.card_number
FROM book
JOIN member ON book.checked_out_by_id = member.id
WHERE book.author = 'Herman Melville';

SELECT author, count(id)
FROM book
GROUP BY author;

SELECT author, count(id)
FROM book
GROUP BY author
HAVING count(id) >= 2;

SELECT member.id, member.name, count(book.id) books_checked_out
FROM member 
LEFT JOIN book ON book.checked_out_by_id = member.id
GROUP BY member.id, member.name
ORDER BY books_checked_out DESC;





