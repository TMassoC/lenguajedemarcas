for $libro in doc("biblioteca.xml")/bib/libro[not(autor)]
order by $libro/@anyo
return concat($libro/@anyo, " -> ", data($libro/titulo))