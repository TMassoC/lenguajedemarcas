(: 6. Mostrar los años de publicación usando una clausula FLWOR, pero usando “let”
 para almacenar los resultados intermedios. Etiquetar la salida con <publicación>. :)

for $book in doc("biblioteca.xml")/bookstore/book
let $year := $book/year
return <publicación>{$year}</publicación>
