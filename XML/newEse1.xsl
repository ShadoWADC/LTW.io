<xsl:stylesheet version="1.0">
	<xsl:output method="html"/>
	<xsl:template match="/doc">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="a">
		<ul>
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<xsl:template match="b">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>
	<xsl:template match="*"/>
</xsl:stylesheet>