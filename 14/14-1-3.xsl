<?xml version="1.0" encoding="UTF-8"?>
<!--exo14_XSLT_q3.xsl Construire une feuille de styles pour extraire (en format TXT) au moins 2 patrons morpho-
syntaxiques de longueurs différentes-->
<!--nous avons choisi le patron Nom+Adj et le patron Nom+Conj+V-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:apply-templates select="baselexicometrique/trame/items/item"/>
    </xsl:template>
    
    <xsl:template match="item">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[2]"/>
        <xsl:if test="($item1/c='N') and ($item2/c='Adj')">
            <xsl:value-of select="concat($item1/f,' ',$item2/f)"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="item">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[1]"/>
        <xsl:variable name="item3" select="following-sibling::item[2]"/>
        <xsl:if test="($item1/c='N') and ($item2/c='Qu') and ($item3/c='V')">
            <xsl:value-of
                select="concat($item1/f, $item2/f, $item3/f)"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>