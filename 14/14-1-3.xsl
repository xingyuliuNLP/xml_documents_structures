<?xml version="1.0" encoding="UTF-8"?>
<!--exo14_XSLT_q3.xsl Construire une feuille de styles pour extraire (en format TXT) au moins 2 patrons morpho-
syntaxiques de longueurs différentes-->
<!--nous avons choisi le patron Nom+Adj et le patron Cl+Verb+Det+Nom-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:text>Patron Nom Adj</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="NomAdj"/>
        <xsl:text>-----------------</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:text>Patron Cl Verb Det Nom</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="ClVDN"/>
    </xsl:template>

    <xsl:template match="item" mode="NomAdj">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[2]"/>
        <xsl:if test="($item1/c = 'N') and ($item2/c = 'Adj')">
            <xsl:value-of select="concat($item1/f, ' ', $item2/f)"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match="item" mode="ClVDN">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[1]"/>
        <xsl:variable name="item3" select="following-sibling::item[2]"/>
        <xsl:variable name="item4" select="following-sibling::item[3]"/>
        <xsl:variable name="item5" select="following-sibling::item[4]"/>
        <xsl:variable name="item6" select="following-sibling::item[5]"/>
        <xsl:variable name="item7" select="following-sibling::item[6]"/>
        <xsl:if
            test="($item1/c = 'Cl') and ($item3/c = 'V') and ($item5/c = 'D') and ($item7/c = 'N')">
            <xsl:value-of
                select="concat($item1/f, $item2/f, $item3/f, $item4/f, $item5/f, $item6/f, $item7/f)"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
