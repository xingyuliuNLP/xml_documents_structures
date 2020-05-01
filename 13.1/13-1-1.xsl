<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:template match="/">
		<xsl:text>EXERCICE 13 : PARTIE I</xsl:text>
		<xsl:text>
</xsl:text>
		<xsl:text>FORME</xsl:text>
		<xsl:text> </xsl:text>
		<xsl:text>POS</xsl:text>
		<xsl:text>
</xsl:text>
		<xsl:for-each select="//element">
			<xsl:value-of select="data[3]"/>
			<xsl:text> </xsl:text>
			<xsl:value-of select="data[1]"/>
			<xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
