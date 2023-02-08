for $x in doc("biblioteca.xml")/bib/libro[editorial='Addison-Wesley' and @anyo > 1992]
return concat($x/@anyo, " -> ", $x/titulo)
