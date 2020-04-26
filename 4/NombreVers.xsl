<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.1">
<xsl:output method="html" encoding="utf-8"/>
    <!-- le nombre de vers du poème -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Nb de vers</title>
            </head>
            <body>
                <center><h1>Nombre de vers du poème :</h1></center>
                <center><h2><xsl:value-of select="count(//l)"/></h2></center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>