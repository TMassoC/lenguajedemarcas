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
                            Factura nº
                            <xsl:value-of select="@atributo" />
                        </th>

                    </xsl:for-each>
                    <xsl:for-each select="facturas/numero-factura/datos-propios">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="empresa" />
                                <br />

                                <xsl:value-of select="dirección/calle" />

                                <br />
                                <xsl:value-of select="dirección/provincia" />
                                <xsl:text>, </xsl:text>

                                <xsl:value-of select="dirección/codigo-postal" />

                                <br />
                                C.I.F.:
                                <xsl:value-of select="cif" />
                                <br />
                                teléfono:
                                <xsl:value-of select="telefono" />
                                <br />
                                fax:
                                <xsl:value-of select="fax" />
                                <br />
                            </td>
                            <td colspan="3">
                                Fecha:
                                <xsl:value-of select="fecha" />
                                <br />
                                Pedido nº
                                <xsl:value-of select="pedido" />
                                <br />
                                Forma de pago:
                                <xsl:value-of select="pago" />
                                <br />
                            </td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <td colspan="6">
                            <b>Datos CLIENTE</b>
                        </td>
                    </tr>

                    <xsl:for-each select="facturas/numero-factura/datos-cliente">
                        <tr>
                            <td colspan="6" style="text-align:left">
                                nº cliente:
                                <xsl:value-of select="numero-cliente" />
                                <br />
                                Nombre:
                                <xsl:value-of select="nombre" />
                                <br />
                                Dirección de envío:
                                <xsl:value-of select="direccion-envio/calle" />
                                nº
                                <xsl:value-of select="direccion-envio/numero" />
                                <xsl:text>, </xsl:text>
                                <xsl:value-of select="direccion-envio/piso" />
                                º
                                <xsl:value-of select="direccion-envio/puerta" />
                                <br />
                                Población:
                                <xsl:value-of select="direccion-envio/poblacion" />
                                <br />
                                cod. postal:
                                <xsl:value-of select="direccion-envio/codigo-postal" />
                                <br />
                                Provincia:
                                <xsl:value-of select="direccion-envio/provincia" />
                                <br />
                            </td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <td colspan="6">
                            <b>Datos FACTURA</b>
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right">
                            <b>REF.</b>
                        </td>
                        <td style="text-align:right">
                            <b>DESCRIPICÓN</b>
                        </td>
                        <td style="text-align:right">
                            <b>CANT.</b>
                        </td>
                        <td style="text-align:right">
                            <b>PRECIO.</b>
                        </td>
                        <td style="text-align:right">
                            <b>I.V.A.</b>
                        </td>
                        <td style="text-align:right">
                            <b>IMPORTE</b>
                        </td>
                    </tr>
                    <xsl:for-each select="facturas/numero-factura/datos-factura/columna">
                        <tr>
                            <td style="text-align:right">
                                <xsl:value-of select="referencia" />
                            </td>
                            <td style="text-align:right">
                                <xsl:value-of select="descripcion" />
                            </td>
                            <td style="text-align:right">
                                <xsl:value-of select="cantidad" />
                            </td>
                            <td style="text-align:right">
                                <xsl:value-of select="precio" />
                            </td>
                            <td style="text-align:right">
                                <xsl:value-of select="iva" />
                            </td>
                            <td style="text-align:right">
                                <xsl:value-of select="importe" />
                            </td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="2">
                            <b>Base imponible</b>
                        </td>
                        <td colspan="2">
                            <b>% I.V.A.</b>
                        </td>
                        <td colspan="2">
                            <b>Cuota I.V.A.</b>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="6"></td> <!-- Aqui no se si esto deberia quitarlo lo pongo para parecerse a la imagen del ejercicio-->
                    </tr>
                    <xsl:for-each select="facturas/numero-factura/datos-factura">
                        <tr>
                            <td colspan="2">
                                <xsl:value-of select="base-imponible" />
                            </td>
                            <td colspan="2">
                                <xsl:value-of select="porcentaje-iva" />
                            </td>
                            <td colspan="2">
                                <xsl:value-of select="total-factura" />
                            </td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="facturas/numero-factura/datos-factura">
                        <tr>

                            <td style="text-align:center" colspan="6">
                                <b>
                                    TOTAL FACTURA
                                    <xsl:value-of select="total-factura" />
                                </b>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>