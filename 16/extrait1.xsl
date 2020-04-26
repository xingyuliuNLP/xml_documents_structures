<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="utf-8"/>
  <xsl:template match="//dico">
    <dico>
      <xsl:text>
</xsl:text>
      <xsl:for-each select="entry">
        <xsl:if test="position() &gt; 2000 and position() &lt; 2201">
          <xsl:copy-of select="."/>
          <xsl:text>
</xsl:text>
        </xsl:if>
      </xsl:for-each>
    </dico>
  </xsl:template>
</xsl:stylesheet>
