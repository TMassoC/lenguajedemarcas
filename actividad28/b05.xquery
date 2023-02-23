(: 5. Mostrar el título y el autor de los libros del año 2005, 
y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.:)

for $book in doc("biblioteca.xml")/bookstore/book
where $book/year = 2005
return <lib2005><titulo>{$book/title/text()}</titulo><autor>{$book/author/text()}</autor></lib2005>


