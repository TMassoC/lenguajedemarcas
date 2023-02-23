(: 7. Mostrar los libros ordenados primero por “category” y después por “title” en una única consulta. :)

for $book in doc("biblioteca.xml")/bookstore/book
order by $book/@category, $book/title
return $book
