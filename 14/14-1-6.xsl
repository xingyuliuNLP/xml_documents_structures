<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--exo14_XSLT_q6.xsl Question subsidiaire : Construire une feuille de styles pour afficher (au format HTML) tout le texte de la base en mettant au jour une relation de dépendance syntaxique choisie (par exemple OBJ) : l’affichage doit mettre au jour le dépendant et le gouverneur-->
  <xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="../css/bao.css"/>
        <title>EXO14-XSLT-auestionSubsidiaire</title>
      </head>
      <body>
        <div class="header" align="center">
          <h1>Le texte de la base <br/>
TrameurFromRhapsodie</h1>
          <h2>une relation de dépendance syntaxique OBJ mise au jour</h2>
          <h2>
            <span class="governor">
              <span class="pos">Gouverneur</span>
            </span>
            <span class="dependant">
              <span class="forme">Dépendant</span>
            </span>
          </h2>
        </div>
        <div class="table-wrapper" style="margin-left:auto; margin-right:auto;width:70%">
          <table class="alt" style="text-align:justify">
            <tbody>
              <tr>
                <td>
                  <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="obj"/>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="item" mode="obj">

    <xsl:choose>
      <xsl:when test="./a[7][contains(text(),'OBJ')]">
        <xsl:variable name="idGov" select="substring-before(substring-after(./a[7], 'OBJ('),')')"/>
        <xsl:variable name="idDep" select="@pos"/>
        <xsl:variable name="dep" select="./c"/>
        <xsl:variable name="itemGov" select="$idDep - $idGov"/>
        <xsl:if test="$itemGov &gt; 0">
          <!--governeur hightlight-->
          <span class="governor">
            <span class="pos">
              <xsl:value-of select="concat(preceding-sibling::item[$itemGov]/f,'[',@pos,']')"/>
            </span>
          </span>
          <!--dependant highlight-->
          <span class="dependant">
            <span class="forme">
              <xsl:value-of select="concat(f,'[',a[7],']')"/>
            </span>
          </span>
        </xsl:if>
        <xsl:if test="$itemGov &lt; 0">
          <!--dependant highlight-->
          <span class="dependant">
            <span class="forme">
              <xsl:value-of select="concat(f,'[',a[7],']')"/>
            </span>
          </span>
          <!--governeur hightlight-->
          <span class="governor">
            <span class="pos">
              <xsl:value-of select="concat(following-sibling::item[-$itemGov]/f,'[',@pos,']')"/>
            </span>
          </span>
        </xsl:if>
      </xsl:when>
      <!--normal output-->
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="c='RETURN'">
            <br/>
          </xsl:when>
          <xsl:when test="f='£' or f='#'"></xsl:when>
          <xsl:otherwise>
            <span>
              <xsl:value-of select="f"/>
            </span>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>