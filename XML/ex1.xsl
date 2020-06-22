<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*"> <!-- Matcha con l elemento radice  -->
		<html>
			<body>
      <ul>
          <li>
				      <xsl:value-of select="name()"/>
          </li>
          <xsl:apply-templates select="*"/>
      </ul>
			</body>
		</html>
	</xsl:template>
  <xsl:template match="*">
    <li><xsl:value-of select="name()"/></li>
    <xsl:apply-templates select="*"/>
  </xsl:template>
</xsl:stylesheet>
