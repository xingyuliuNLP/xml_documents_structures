<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
  <xsl:output encoding="UTF-8" method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
      </head>
      <body>
        <style>
td {
  width: 10%;
}
th {
  text-align: center;
}
table, th, td {
  border: 1px solid black;
}
        </style>
        <div class="contain">
          <h2>Exo 13.2 - XSLT 1</h2>
          <xsl:for-each select="//p">
            <xsl:if test="./item[last()]/a[2]/text() = '§'">
              <table>
                <thead>
                  <th>Index</th>
                  <th>Form</th>
                  <th>Lemma</th>
                  <th>UPOS</th>
                  <th>XPOS</th>
                  <th>Feats</th>
                  <th>Head</th>
                  <th>Deprel</th>
                  <th>Egov</th>
                  <th>Misc</th>
                </thead>
                <tbody>
                  <xsl:for-each select="item">
                    <tr>
                      <td>
                        <xsl:value-of select="./a[1]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[2]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[3]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[4]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[5]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[6]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[7]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[8]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[9]"/>
                      </td>
                      <td>
                        <xsl:value-of select="./a[10]"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
            </xsl:if>
            <hr/>
            <hr/>
          </xsl:for-each>
        </div>
      </body>
      <footer/>
    </html>
  </xsl:template>
</xsl:stylesheet>