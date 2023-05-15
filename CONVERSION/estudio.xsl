<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
 <html>
    <head>
      <title>Pepe</title>    
    </head>
    <body>
     <xsl:apply-templates/>
    </body> 
 </html>
</xsl:template>

<xsl:template match="actor">
<xsl:if test="@papel='protagonista'">
  <p style="color: red"><xsl:value-of select="nombre"/></p>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>