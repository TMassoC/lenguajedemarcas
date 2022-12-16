<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:template match="/">
{
    "cd-oferta": {   
        "cd": [
        <xsl:for-each select="cd-oferta/cd">
            {
                "titulo": "<xsl:value-of select="titulo" />",
                "artista": "<xsl:value-of select="artista" />",
                "pais": "<xsl:value-of select="pais" />",
                "compañia-discografica": "<xsl:value-of select="compañia-discografica" />",
                "precio": <xsl:value-of select="precio" />,
                "año-pubblicacion": <xsl:value-of select="año-pubblicacion" />
            }<xsl:if test="position() != last()">,</xsl:if></xsl:for-each>
        ]
    }
}
</xsl:template>
</xsl:stylesheet>
