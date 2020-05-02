<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
    <html>
        <body>
			<h1 align="left">EXERCICE 6 : Question 5</h1>
			<br/>
			<xsl:apply-templates select="//body/lg"/>
		</body>
	</html>
</xsl:template>

<xsl:template match="//body/lg">
	<xsl:for-each select="./lg">
		<p>
		<ol>
			<xsl:for-each select="./l">
				<li>
					<xsl:value-of select="."/>
				</li>
			</xsl:for-each>
		</ol>
		</p>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
