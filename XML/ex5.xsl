<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/bibliografia">
    <html>
				<body>
  			     <ol>
               <xsl:value-of select="text()"/>:
               <xsl:apply-templates select="/bibliografia/nomeAutore"/>
             </ol>
				</body>
			</html>
  </xsl:template>
</xsl:stylesheet>
