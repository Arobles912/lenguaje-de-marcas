﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match='/'>
<html lang="en">
   <head>
   <meta charset="utf-8"/>
   <title>animales</title>
   </head>
    <body>
      <xsl:apply-templates />
    </body>
    </html>
  </xsl:template>

  <xsl:template match="animal">
    <p><b>animal: <xsl:value-of select="@especie" /> </b> 
    se llama <xsl:value-of select="@nombre" /> .
    Es de color <xsl:value-of select="datos/@color" />, 
    y pesa <xsl:value-of select="datos/@peso" />
    </p>
  </xsl:template>

</xsl:stylesheet>