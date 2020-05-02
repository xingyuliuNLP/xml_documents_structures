<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
    <html>
        <body>
			<h1 align="center">EXERCICE 6 : Question 4</h1>
			<br/>
			<xsl:apply-templates select="//body/lg/lg[count(child::l) = 4][1]"/>
		</body>
	</html>
	
</xsl:template>

<xsl:template match="//body/lg/lg">
	<center>
	<font size="+1">
		<xsl:for-each select="./l">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
	</font>
	</center>
</xsl:template>
 
</xsl:stylesheet>