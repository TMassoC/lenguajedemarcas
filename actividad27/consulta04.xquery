(:~ Listar los libros publicados antes del año 2000 (XML completo). ~:)

doc("biblioteca.xml")/bib/libro[xs:integer(@anyo) < 2000]

