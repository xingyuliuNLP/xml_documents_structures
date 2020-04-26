<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="//dico">
	<xsl:for-each select="./entry">
			<xsl:if test="(./pos/@name ='verb')">
			<xsl:text>
Lemme : </xsl:text><xsl:value-of select="./lemma"/><xsl:text>
Verbes : </xsl:text>
			<xsl:for-each select="./inflected">
				<xsl:value-of select="./form"/><xsl:text> </xsl:text>
			</xsl:for-each><xsl:text>
</xsl:text>
			</xsl:if>
	</xsl:for-each>
	
</xsl:template>
</xsl:stylesheet>
