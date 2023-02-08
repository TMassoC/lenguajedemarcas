for $libro in doc("biblioteca.xml")/bib/libro
let $titulo := $libro/titulo
let $num_autores := count($libro/autor)
return
<libro>
<titulo>{$titulo/text()}</titulo>
<num_autores>{$num_autores}</num_autores>
</libro>