<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
    <html>
        <body>
			<h1 align="center">EXERCICE 6 : Question 9</h1>
			<br/>
			<b><xsl:apply-templates select="//body/lg/lg[count(child::l) = 4]"/></b>
			<i><xsl:apply-templates select="//body/lg/lg[count(child::l) = 3]"/></i>
		</body>
	</html>
	
</xsl:template>

<xsl:template match="lg">
		<center>
		<p>
		<font size="+1">
		<xsl:for-each select="l">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
		</font>
		</p>
		</center>
</xsl:template>
 
</xsl:stylesheet>
