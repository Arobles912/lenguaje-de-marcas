<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <xsl:value-of select="Bolsa/@hora"/>
        <xsl:value-of select="Bolsa/@dia"/>
        <table border="1">
          <tr>
            <th>Nombre</th>
            <th>Simbolo</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="/Bolsa/Empresa">
              <xsl:sort select="Precio" order="descending"/>
            <tr>
              <xsl:if test="@indice = 'general'">
                <td><xsl:value-of select="Nombre"/></td>
              </xsl:if>
              <xsl:if test="@indice != 'general'">
                <td><xsl:value-of select="Nombre"/></td>
              </xsl:if>
              <td>
                <xsl:value-of select="Simbolo"/>
              </td>
              <xsl:choose>
                <xsl:when test="Precio &gt; 75">
                  <td style="color:blue">
                    <xsl:value-of select="Precio"/>
                  </td>
                </xsl:when>
                <xsl:when test="Precio &lt; 25">
                  <td style="color:red">
                    <xsl:value-of select="Precio"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td><xsl:value-of select="Precio"/></td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
        *Nota informativa
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
