<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
  <xsl:output encoding="UTF-8" method="html"/>
  <xsl:template match="/">
    <html>

      <body>
        <style>
            table, th, td {
  border: 1px solid black;
}
        </style>
        <div class="contain">
          <h2>Alignement titre-description</h2>
          <table>
            <thead>
              <th>Description</th>
              <th>Titre</th>
            </thead>
            <tbody>
              <xsl:for-each select="//p">
                <xsl:choose>
                  <xsl:when test="./item[last()]/a[2][contains(text(), '§')]">
                    <tr>
                      <td width="50%">
                        <xsl:call-template name="stringjoin">
                          <xsl:with-param name="valueList" select="./item/a[2]/text()"/>
                          <xsl:with-param name="separator" select="' '"/>
                        </xsl:call-template>
                      </td>
                      <td width="50%">
                        <xsl:call-template name="stringjoin">
                          <xsl:with-param name="valueList" select="preceding-sibling::p[1]/item/a[2]/text()"/>
                          <xsl:with-param name="separator" select="' '"/>
                        </xsl:call-template>
                      </td>
                    </tr>
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
      <footer/>
    </html>
  </xsl:template>
  <xsl:template name="stringjoin">
    <xsl:param name="valueList" select="''"/>
    <xsl:param name="separator" select="','"/>
    <xsl:for-each select="$valueList">
      <xsl:choose>
        <xsl:when test="position() = 1">
          <xsl:value-of select="."/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="concat($separator, .)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
