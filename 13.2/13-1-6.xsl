<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <h3 align="center"> LISTE POS EN RELATION DE DEPENDANCE SYNTAXIQUE DE TYPE OBJ </h3>
                <table border="1" align="center">
                    <tr>
                        <th>Liste POS</th>
                        <th>Count</th>
                    </tr>
                    <xsl:for-each-group select="//item[a[8] = 'obj']" group-by="a[4]">
                        <tr>
                            <td>
                                <xsl:value-of select="current-grouping-key()"/>
                            </td>
                            <td>
                                <xsl:value-of select="count(current-group())"/>
                            </td>
                        </tr>
                    </xsl:for-each-group>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
