for $libro in doc("biblioteca.xml")/bib/libro
let $titulo := $libro/titulo
let $autor := $libro/autor
return
<result>
{$titulo, $autor}
</result>