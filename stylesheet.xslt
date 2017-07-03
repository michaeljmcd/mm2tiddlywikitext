<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/xhtml1/strict">

<xsl:template match="/">
[
    <xsl:for-each select="/map/node">
        {
            "title": "<xsl:value-of select="./@TEXT"></xsl:value-of>",
            "text": "<xsl:call-template name="wikitext" />"
        }
    </xsl:for-each>
]
</xsl:template>

<xsl:template name="wikitext">foobar</xsl:template>

</xsl:stylesheet>
