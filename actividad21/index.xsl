<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hechos</title>
            </head>
            <body>
                <h1>Hechos</h1>
                <table border="1px">
                    <tr>
                        <th rowspan="2">Descripcion de cada hecho</th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr>
                        <th>Día</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="tabla/fundacion">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"></xsl:value-of><!-- Va con arroba ya que es un atributo-->
                            </td>
                            <xsl:for-each select="fecha"><!--entramos en fecha-->
                                <td>
                                    <xsl:value-of select="dia"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="mes"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="año"></xsl:value-of>
                                </td>
                            </xsl:for-each>
                        </tr>
            
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>