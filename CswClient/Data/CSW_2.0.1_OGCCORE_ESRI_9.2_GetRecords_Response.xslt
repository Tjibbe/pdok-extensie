<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:csw="http://www.opengis.net/cat/csw" xmlns:ows="http://www.opengis.net/ows" xmlns:dct="http://www.purl.org/dc/terms/" xmlns:dc="http://www.purl.org/dc/elements/1.1/" xmlns:dcmiBox="http://dublincore.org/documents/2000/07/11/dcmi-box/" exclude-result-prefixes="csw dc dct dcmiBox ows">
  <xsl:output method="xml" indent="yes"  encoding="UTF-8" omit-xml-declaration="no" />
  <xsl:template match="/">
    <Records>
      <xsl:for-each select="/csw:GetRecordsResponse/csw:SearchResults/csw:SummaryRecord">
        <Record>
          <ID>
            <xsl:value-of select="dc:identifier"/>
          </ID>
          <Title>
            <xsl:value-of select="dc:title"/>
          </Title>
          <Abstract>
            <xsl:value-of select="dct:abstract"/>
          </Abstract>
          <Type>
            <xsl:value-of select="dc:type"/>
          </Type>
          <LowerCorner><xsl:value-of select="ows:WGS84BoundingBox/ows:LowerCorner"/></LowerCorner>
          <UpperCorner><xsl:value-of select="ows:WGS84BoundingBox/ows:UpperCorner"/></UpperCorner>
        </Record>
      </xsl:for-each>

    </Records>
  </xsl:template>
</xsl:stylesheet>
