<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:template match="/">
---
facturas:
<xsl:for-each select="facturas/numero-factura">
  numero-factura:
    "-atributo": <xsl:value-of select="@atributo" />
    datos-propios:
      empresa: <xsl:value-of select="datos-propios/empresa" />
      dirección:
        calle: <xsl:value-of select="datos-propios/dirección/calle" />
        provincia: <xsl:value-of select="datos-propios/dirección/provincia" />
        codigo-postal: <xsl:value-of select="datos-propios/dirección/codigo-postal" />
      cif: <xsl:value-of select="datos-propios/cif" />
      telefono: <xsl:value-of select="datos-propios/telefono" />
      fax: <xsl:value-of select="datos-propios/fax" />
    datos-pedido:  
      fecha: <xsl:value-of select="datos-pedido/fecha" />
      pedido: <xsl:value-of select="datos-pedido/pedido" />
      pago: <xsl:value-of select="datos-pedido/pago" />
    datos-cliente:
      numero-cliente: <xsl:value-of select="datos-cliente/numero-cliente" />
      nombre: <xsl:value-of select="datos-cliente/nombre" />
      direccion-envio:
        calle: <xsl:value-of select="datos-cliente/direccion-envio/calle" />
        numero: <xsl:value-of select="datos-cliente/direccion-envio/numero" />
        piso: <xsl:value-of select="datos-cliente/direccion-envio/piso" />
        puerta: <xsl:value-of select="datos-cliente/direccion-envio/puerta" />
        poblacion: <xsl:value-of select="datos-cliente/direccion-envio/poblacion" />
        codigo-postal: <xsl:value-of select="datos-cliente/direccion-envio/codigo-postal" />
        provincia: <xsl:value-of select="datos-cliente/direccion-envio/provincia" />
    datos-factura:
      columna:<xsl:for-each select="datos-factura/columna">
      -
        referencia: <xsl:value-of select="referencia" />
        descripcion: <xsl:value-of select="descripcion" />
        cantidad: <xsl:value-of select="cantidad" />
        precio: <xsl:value-of select="precio" />
        iva: <xsl:value-of select="iva" />
        importe: <xsl:value-of select="importe" /></xsl:for-each>
      base-imponible: <xsl:value-of select="datos-factura/base-imponible"/>
      porcentaje-iva: <xsl:value-of select="datos-factura/porcentaje-iva"/>
      cuota-iva: <xsl:value-of select="datos-factura/cuota-iva"/>
      total-factura: <xsl:value-of select="datos-factura/total-factura"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>