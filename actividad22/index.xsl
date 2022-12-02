<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>CDs en oferta</title>
            </head>
            <body>
                <h1>CDs en oferta</h1>
                <table border="1px">
                    <tr>
                        <th colspan="6">CDs en oferta</th>
                    </tr>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>Pais</th>
                        <th>Compañia discografica</th>
                        <th>precio</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="cd-oferta/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="artista"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="pais"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="compañia-discografica"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="precio"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="año-pubblicacion"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>