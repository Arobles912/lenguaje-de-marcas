<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

   <html>
    <head>
      <title>Liga</title>    
    </head>
    <body>
        <table border="1">
          <tr>
          <th>Nombre</th>
          <th>Puntos</th>
          </tr>
          <xsl:for-each select="/liga/equipo">
            <xsl:sort select="puntos" order="descending"/>
            <tr>
              <td><xsl:value-of select="@nombre"/></td>
              <xsl:choose>
              <xsl:when test="puntos &gt; 50">
              <td><strong><xsl:value-of select="puntos"/></strong></td>  
              </xsl:when>
              <xsl:otherwise>
              <td><xsl:value-of select="puntos"/></td>  
              </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
    </body>   
   </html>  
  </xsl:template>

</xsl:stylesheet>
