<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/baselexicometrique/trame/items/item"/>
    </xsl:template>
    <xsl:template match="item">
        <xsl:if test="./a[7][contains(text(),'OBJ')]">
            <xsl:variable name="idGov" select="substring-before(substring-after(./a[7], 'OBJ('),')')"/>
            <xsl:variable name="idDep" select="@pos"/>
            <xsl:variable name="dep" select="./c"/>
            <xsl:variable name="itemGov" select="$idDep - $idGov"/>
            <xsl:if test="$itemGov &gt; 0">
                <!-- gouverneur AVANT l'objet -->
                <xsl:value-of select="preceding-sibling::item[$itemGov]/c"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$dep"/>
                <xsl:text>
</xsl:text>
            </xsl:if>
            <xsl:if test="$itemGov &lt; 0">
                <!-- gouverneur APRES l'objet -->
                <xsl:value-of select="$dep"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[-$itemGov]/c"/>
                <xsl:text>
</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>