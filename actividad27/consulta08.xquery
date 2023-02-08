for $x in distinct-values(doc("biblioteca.xml")/bib/libro/autor/apellido)
order by $x
return $x
