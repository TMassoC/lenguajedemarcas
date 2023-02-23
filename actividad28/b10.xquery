(: 10. Mostrar el precio mínimo y máximo de los libros. :)

let $minPrice := min(doc("biblioteca.xml")/bookstore/book/price)
let $maxPrice := max(doc("biblioteca.xml")/bookstore/book/price)
return <precios><min>{$minPrice}</min><max>{$maxPrice}</max></precios>
