<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:csw="http://www.opengis.net/cat/csw"
                xmlns:dct="http://purl.org/dc/terms/"
                exclude-result-prefixes="csw dct">
  <xsl:output method="text" indent="no" encoding="UTF-8"/>
  <xsl:template match="/">
  <xsl:apply-templates select="//csw:Record/dct:references"/>
  </xsl:template>
  
  <xsl:template match="//csw:Record/dct:references">
    <xsl:value-of select="."/>
    <xsl:text>&#x2714;</xsl:text>
    <xsl:value-of select="@scheme"/>
     <xsl:text>&#x2715;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
