<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	<xsl:template match="/*">
		<xsl:copy/>
	</xsl:template>
  <xsl:template match="*">
    <xsl:element name="nuovo">
      <xsl:attribute name="elem">
        <xsl:value-of select="name()"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
