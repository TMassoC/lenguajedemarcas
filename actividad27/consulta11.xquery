
let $doc := doc("biblioteca.xml")/bib
return
  <html lang="en">
    <head>
      <meta charset="UTF-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>Listado de libros</title>
    </head>
    <body>
      <h1>Listado de libros</h1>
      <table border="1">
        <tr>
          <th style="font-weight: bold; text-align: left;">Título</th>
          <th style="font-weight: bold; text-align: left;">Editorial</th>
          <th style="font-weight: bold; text-align: right;">Precio</th>
        </tr>
        {
          for $libro in $doc/libro
          return
          <tr>
            <td style="text-align: left;">{$libro/titulo/text()}</td>
            <td style="text-align: left;">{$libro/editorial/text()}</td>
            <td style="text-align: right;">{$libro/precio/text()}</td>
          </tr>
        }
      </table>
    </body>
  </html>
