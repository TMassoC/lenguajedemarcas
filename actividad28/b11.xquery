(: 11. Mostrar el título del libro, su precio y precio con IVA incluido,
 cada uno con su propia etiqueta. Ordénelos por precio con IVA. :)

 <libros-precios>
{
    for $book in doc("biblioteca.xml")/bookstore/book
    let $iva := 0.21
    let $precio-iva := $book/price * (1 + $iva)
    order by $precio-iva ascending
    return <libro>
               <titulo>{$book/title/text()}</titulo>
               <precio>{$book/price/text()}</precio>
               <precio-iva>{$precio-iva}</precio-iva>
           </libro>
}
</libros-precios>

