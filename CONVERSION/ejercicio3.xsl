<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html lang="en">
 <head>
 <meta charset="utf-8"/>
 <title>animales</title>
 </head>
 <body>
    <apply-templates/>
 </body>
</html>
</xsl:template>
<xsl:template match="animal">
  <p><strong style="font-weight: bold">animal: <xsl:valueof select="@especie"/></strong>
  se llama <xsl:valueof select="@nombre"/>
  </p>
  <xsl:template match="datos">
  <p>
  es de color <xsl:valueof select="@color"/>
  y pesa <xsl:valueof select="peso"/>
  </p>
  </xsl:template>
</xsl:template>
</xsl:stylesheet>
