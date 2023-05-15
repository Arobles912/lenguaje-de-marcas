<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform%22%3E">
  <xsl:template match="/">
  <libreria>
    <xsl:apply-templates />
  </libreria>
  </xsl:template>

  <xsl:template match="libro">
    <libro>
      <xsl:choose>
        <xsl:when test="precio &gt; 50">
          <xsl:attribute name="caro">SI</xsl:attribute>
        </xsl:when>
        <xsl:when test="precio &lt; 40">
          <xsl:attribute name="caro">NO</xsl:attribute>
        </xsl:when> 
        <xsl:otherwise>
          <xsl:attribute name="caro">UN POCO</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>

      <xsl:choose>
        <xsl:when test="paginas &gt; 1000">
          <xsl:attribute name="largo">SI</xsl:attribute>
        </xsl:when>
        <xsl:when test="paginas &lt; 800">
          <xsl:attribute name="largo">NO</xsl:attribute>
        </xsl:when> 
        <xsl:otherwise>
          <xsl:attribute name="largo">UN POCO</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="titulo" />
    </libro>
  </xsl:template>
</xsl:stylesheet>