<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:text>RELATION DE DEPENDANCE TYPE OBJ</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:text>TITRE : </xsl:text>
<!--        <xsl:value-of select="count(//item[last()]/a[2]/text() != '§' and //item/a[8][text() = 'obj'])"/>-->
        <xsl:text> items en relation de dépendance de type OBJ </xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="/" mode="titre"/>
        <xsl:text>
</xsl:text>
        <xsl:text>DESCRIPTION: </xsl:text>
<!--        <xsl:value-of select="count(//item[last()]/a[2]/text() = '§' and //item/a[8][text() = 'obj'])"/>-->
        <xsl:text> items en relation de dépendance de type OBJ </xsl:text>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="/" mode="des"/>
    </xsl:template>


    <xsl:template match="/" mode="titre">
        <xsl:for-each select="//p">
            <xsl:if test="(./item[last()]/a[2] != '§')">
                <xsl:for-each select="./item">
                    <xsl:variable name="idgov" select="./a[8][text() = 'obj']/parent::*/a[9]"/>
                    <xsl:if test="./a[8][text() = 'obj']">
                        <xsl:value-of select="./a[2]"/> [ <xsl:value-of select="./a[4]"/> ] <xsl:text>-OBJ-</xsl:text>
                        <xsl:value-of select="./parent::*/item/a[1][text() = $idgov]/parent::*/a[2]"/>
                        <xsl:text>
</xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="/" mode="des">
        <xsl:for-each select="//p">
            <xsl:if test="(./item[last()]/a[2] = '§')">
                <xsl:for-each select="./item">
                    <xsl:variable name="idgov" select="./a[8][text() = 'obj']/parent::*/a[9]"/>
                    <xsl:if test="./a[8][text() = 'obj']">
                        <xsl:value-of select="./a[2]"/> [ <xsl:value-of select="./a[4]"/> ] <xsl:text>-OBJ-</xsl:text>
                        <xsl:value-of select="./parent::*/item/a[1][text() = $idgov]/parent::*/a[2]"/>
                        <xsl:text>
</xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
