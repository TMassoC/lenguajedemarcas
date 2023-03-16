<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Clases más divertidas del mundo</title>
            </head>
            <body>
                <h1>Clases</h1>
                <table border="1px">
                    <tr>
                        <th colspan="3">Clases</th>
                    </tr>
            
                    <xsl:for-each select="salud/servicios">
                        <tr>
                            <td>
                                <xsl:value-of select="precio/precio_sesion"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select=""></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="pais"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="compañia-discografica"></xsl:value-of>
                            </td>
                            
                        </tr>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>