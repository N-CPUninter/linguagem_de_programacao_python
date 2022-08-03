<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      <xsl:output indent="yes" encoding="utf-8"/>
  
      <xsl:template match="data">
          <Root>
              <badges>
                  <xsl:apply-templates select="row"/>
              </badges>
          </Root>
      </xsl:template>

      <xsl:template match="row">
          <xsl:element name="row">
              <xsl:attribute name="Id"><xsl:value-of select="Id"/></xsl:attribute>
              <xsl:attribute name="UserId"><xsl:value-of select="UserId"/></xsl:attribute>
              <xsl:attribute name="Name"><xsl:value-of select="Name"/></xsl:attribute>
              <xsl:attribute name="Date"><xsl:value-of select="Date"/></xsl:attribute>
              <xsl:attribute name="Class"><xsl:value-of select="Class"/></xsl:attribute>
              <xsl:attribute name="TagBased"><xsl:value-of select="TagBased"/></xsl:attribute>
          </xsl:element>
      </xsl:template>
</xsl:stylesheet>