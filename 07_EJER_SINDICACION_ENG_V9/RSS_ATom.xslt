<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:a="http://www.w3.org/2005/Atom">

<xsl:template match="/">
  <html>
  <head>
    <title>News Feed</title>
    <link rel="stylesheet" type="text/css" href="Estilo.css"/>
  </head>
  <body>
    <h1>News Feed</h1>
    <!-- Aplicamos plantillas a las entradas de Atom -->
    <xsl:apply-templates select="//a:entry | //item"/>
  </body>
  </html>
</xsl:template>

<xsl:template match="a:entry | item">
  <div class="entry">
    <div class="entry-title">
      <xsl:value-of select="a:title | title"/>
    </div>
    <div class="entry-link">
      <a href="{a:link/@href | link}">
        <xsl:value-of select="a:link/@href | link"/>
      </a>
    </div>
    <div class="entry-content">
      <xsl:value-of select="a:content | description"/>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>
