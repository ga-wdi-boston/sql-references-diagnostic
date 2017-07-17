-- retrieve appointment information
SELECT b.title
FROM books b
INNER JOIN authors a
  ON b.author_id = a.id;
