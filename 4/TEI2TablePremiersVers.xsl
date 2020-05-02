<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.1">
    <xsl:output method="html" version="5.0" encoding="utf-8"/>
    <!-- 1ère règle : se posiitionner dans la racine -->
    <xsl:template match="/TEI.2">
        <html>
            <head>
                <title>Poème</title>
            </head>
            <body>
                <center>
                    <h1>Funeral Blues</h1>
                </center>
                <xsl:apply-templates select="//titleStmt"/>
                <center>
                    <h3 bgcolor="#EEEEEE">Premiers Vers</h3>
                </center>
                <xsl:apply-templates select="//lg"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//titleStmt">
        <xsl:if test="author">
            <center>
                <h3>Nom de l'auteur</h3>
            </center>
            <center>
                <xsl:value-of select="author"/>
            </center>
        </xsl:if>
        <xsl:if test="title">
            <center>
                <h3>Titre</h3>
            </center>
            <center>
                <xsl:value-of select="title"/>
            </center>
        </xsl:if>
    </xsl:template>
    <!-- application d'une règle pour les noeud des strophes -->
    <xsl:template match="//lg">
        <center>
            <!-- afficher le 1er "l" (la première ligne) de strophe "lg" -->
            <xsl:value-of select="l[1]"/>
        </center>
        <br/>
    </xsl:template>

</xsl:stylesheet>
