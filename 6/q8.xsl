<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8"/>
<xsl:template match="/">
	<xsl:text>EXERCICE 6 : Question 8</xsl:text>
	<xsl:text>
</xsl:text>
	<xsl:apply-templates select="//body/lg/lg"/>
</xsl:template>
 
<xsl:template match="//body/lg/lg">
	<xsl:for-each select="./l">
		<xsl:if test="contains(text(),';') or contains(text(),':')">
			<xsl:value-of select="."/>
				<xsl:text>
</xsl:text>
				<xsl:text>
</xsl:text>
		</xsl:if>
	</xsl:for-each>
</xsl:template>
 
</xsl:stylesheet>
