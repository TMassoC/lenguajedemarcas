(: 9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. :)

<resultados>
{
    for $titulo in doc("biblioteca.xml")/bookstore/book/title
    return <titulo>{data($titulo)}</titulo>
}
<total>{count(doc("biblioteca.xml")/bookstore/book)}</total>
</resultados>
