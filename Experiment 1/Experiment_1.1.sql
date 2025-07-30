CREATE TABLE Author (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(30),
  nationality VARCHAR(30)
);

CREATE TABLE Book (
  book_id INT PRIMARY KEY,
  title VARCHAR(50),
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES Author(author_id)
);


INSERT INTO Author (author_id, author_name, nationality)
VALUES
  (1, 'Maheshwar', 'India'),
  (2, 'Raghav', 'Japan'),
  (3, 'Manan', 'South Korea'),
  (4, 'Rohit', 'North Korea'),
  (5, 'Abhinav', 'Italy');

INSERT INTO Book (book_id, title, author_id)
VALUES
  (1001, 'Advanced Data Structures', 1),
  (1002, 'C++ Programming', 2),
  (1003, 'Operating System', 1),
  (1004, 'System Design', 4),
  (1005, 'Mathematics', 5);

SELECT * FROM Author;
SELECT * FROM Book;

SELECT 
  A.author_id AS [Author ID],
  A.author_name AS [Author Name],
  A.nationality,
  B.book_id AS [Book ID],
  B.title AS [Book Title]
FROM Author A
JOIN Book B ON A.author_id = B.author_id;
