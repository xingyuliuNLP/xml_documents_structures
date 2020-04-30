<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--exo14_XSLT_q4.xsl Construire une feuille de styles pour extraire (au format TXT) les items en relation de dépendance syntaxique de type OBJ (les classer et les compter)-->
    <!--(head -n 1 exo13_XSLT_q4.txt; tail -n +2 exo13_XSLT_q4.txt | sort | uniq -ic | sort -gr) > exo13_XSLT_sort_q4.txt-->
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">

            <xsl:text>obj(Gouverneur&lt;----Dépendant)
</xsl:text>
            <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="OBJ"
                > </xsl:apply-templates>
        
    </xsl:template>
    
    <xsl:template match="item" mode="OBJ">
        <xsl:if test="matches(./a[7],'OBJ')">
            <xsl:variable name="dep_item" select="."/>
            <xsl:variable name="dep_pos" select="number(@pos)"/>
            <xsl:variable name="gov_pos"
                select="number($dep_item/a[7]/replace($dep_item/a[7],'OBJ\((\d+)\)','$1'))"/>
            <xsl:variable name="diff" select="number($gov_pos - $dep_pos)"/>
            
            <xsl:choose>
                <xsl:when test="number($diff) > 0">
                    <xsl:value-of select="following-sibling::item[number($diff)]/l"/>
                    <xsl:text> </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="preceding-sibling::item[abs($diff)]/l"/>
                    <xsl:text> </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            
            <xsl:value-of select="$dep_item/l"/>
            <xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>

