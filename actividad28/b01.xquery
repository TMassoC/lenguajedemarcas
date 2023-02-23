(: 1. Mostrar los títulos de los libros con la etiqueta <titulo>. :)



for $titulo in doc("biblioteca.xml")/bookstore/book/title
return <title>{$titulo/text()}</title>
