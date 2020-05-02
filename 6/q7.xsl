<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
    <html>
        <body><style>
					
					td, th {
					border: 1px solid #dddddd;
					text-align: left;
					padding: 8px;
					}
					
			</style>
			<h1 align="center">EXERCICE 6 : Question 7</h1>
			<br/>
            <center>
			<table border="0">
				<xsl:apply-templates select="//body/lg/lg"/>
			</table>
			</center>
		</body>
	</html>
</xsl:template>

<xsl:template match="//body/lg/lg">
	<xsl:for-each select="./l">
        <tr>
			<td style="text-align:left">
				<xsl:value-of select="."/>
			</td>
		</tr>
    </xsl:for-each>
	<xsl:if test="position() != last()">
		<tr>
			<td>
				<p></p>
			</td>
		</tr>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
