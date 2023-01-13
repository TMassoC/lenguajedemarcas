<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Factura nº 999</title>
            </head>
            <body>


                <table border="1px">
                    <xsl:for-each select="facturas/numero-factura">
                        <th colspan="6">
                            <label>Factura nº </label>
                            <xsl:value-of select="@atributo"></xsl:value-of>
                        </th>

                    </xsl:for-each>
                    <xsl:for-each select="facturas/numero-factura/datos-propios">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="empresa"></xsl:value-of>
                                <br />


                                <xsl:value-of select="direccion/calle"></xsl:value-of>
                                <xsl:value-of select="direccion/provincia"></xsl:value-of>
                                <xsl:value-of select="direccion/codigo-postal"></xsl:value-of>
                                C.I.F.:
                                <xsl:value-of select="cif"></xsl:value-of>
                                <br />
                                teléfono:
                                <xsl:value-of select="telefono"></xsl:value-of>
                                <br />
                                fax:
                                <xsl:value-of select="fax"></xsl:value-of>
                                <br />
                            </td>
                            <td colspan="3">
                                Fecha:
                                <xsl:value-of select="fecha"></xsl:value-of>
                                <br />
                                Pedido nº
                                <xsl:value-of select="pedido"></xsl:value-of>
                                <br />
                                Forma de pago:
                                <xsl:value-of select="pago"></xsl:value-of>
                                <br />

                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                            <td>5</td>
                            <td>6</td>
                        </tr>


                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>