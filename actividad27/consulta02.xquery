for $x in doc("biblioteca.xml")/bib/libro
order by $x/@anyo
return concat($x/@anyo, " -> ", data($x/titulo))
