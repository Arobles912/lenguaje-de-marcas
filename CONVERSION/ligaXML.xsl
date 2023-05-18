<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <clasificacion>
      <xsl:for-each select="/liga/equipo">
        <equipo>
          <denominacion><xsl:value-of select="nombre"/></denominacion>
          <jugados><xsl:value-of select="ganados+perdidos+empatados"/></jugados>
        </equipo>
      </xsl:for-each>
    </clasificacion>
  </xsl:template>
</xsl:stylesheet>
