<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

<xsl:template match="/">
[
    <xsl:for-each select="/map/node">
        {
            "title": "<xsl:value-of select="./@TEXT"></xsl:value-of>",
            "text": "<xsl:for-each select="./node"><xsl:call-template name="wikitextlist"><xsl:with-param name="depth" select="1" /><xsl:with-param name="startingNodes" select="." /></xsl:call-template>\n</xsl:for-each>"
        }
    </xsl:for-each>
]
</xsl:template>

<xsl:template name="wikitextlist">
    <xsl:param name="depth" />
    <xsl:param name="currentNode" />

    <xsl:call-template name="repeatableText">
        <xsl:with-param name="index" select="1" />
        <xsl:with-param name="total" select="$depth" />
        <xsl:with-param name="text" select="'#'" />
    </xsl:call-template>
    <xsl:text> </xsl:text>

    <xsl:value-of select="./@TEXT" />
    
    <xsl:for-each select="./node">\n<xsl:call-template name="wikitextlist"><xsl:with-param name="depth" select="$depth + 1" /><xsl:with-param name="currentNode" select="." /></xsl:call-template></xsl:for-each>
</xsl:template>

<xsl:template name="repeatableText">
    <xsl:param name="index" select="1" />
    <xsl:param name="total" select="10" />
    <xsl:param name="text" />

    <xsl:value-of select="$text" />

    <xsl:if test="not($index = $total)">
        <xsl:call-template name="repeatableText">
            <xsl:with-param name="index" select="$index + 1" />
            <xsl:with-param name="total" select="$total" />
            <xsl:with-param name="text" select="$text" />
        </xsl:call-template>
    </xsl:if>
</xsl:template>

</xsl:stylesheet>
