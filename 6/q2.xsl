<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="text" encoding="UTF-8"/>
 <xsl:template match="/">
  <xsl:text>EXERCICE 6 : Question2</xsl:text>
  <xsl:text>
 </xsl:text>
  <xsl:text>Titre : </xsl:text>
  <xsl:value-of select="TEI/text/group/text/front/head"/>
  <xsl:text>
 </xsl:text>
  <xsl:text>Date : </xsl:text>
  <xsl:value-of select="TEI/text/group/text/front/dateline"/>
  <xsl:apply-templates select="TEI/text/group/text/body/lg/lg/l"/>
  <xsl:text>
 </xsl:text>
 </xsl:template>

 <xsl:template match="//lg/lg/l">
  <xsl:for-each select=".">
   <xsl:value-of select="."/>
  <xsl:text>
 </xsl:text>
  </xsl:for-each>
  <xsl:text>
 </xsl:text>
 </xsl:template>

</xsl:stylesheet>
