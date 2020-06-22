<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*"> <!-- Matcha con l elemento radice  -->
		<html>
			<body>
      <ol>
          <li>
				      <xsl:value-of select="text()"/>
          </li>
          <xsl:apply-templates select="*"/>
      </ol>
			</body>
		</html>
	</xsl:template>
  <xsl:template match="*">
    <ul>
      <li>
        <xsl:element name="{text()}">
        </xsl:element>
        <xsl:apply-templates/>
      </li>
    </ul>
  </xsl:template>
</xsl:stylesheet>
