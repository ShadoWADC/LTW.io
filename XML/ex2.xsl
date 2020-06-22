<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
  <xsl:template match="/*">
    <xsl:element name="{name()}">
      <xsl:apply-templates/>  <!-- La chiama sta dentro element, quindi il risultato è figlio dell'elemento  -->
    </xsl:element>
  </xsl:template>

  <xsl:template match="*">
    <xsl:element name="{name()}"></xsl:element>
    <xsl:apply-templates/>
    <!-- I figli dell'elemento producono output allo stesso livello dell'elemento appena creato  -->
    <!-- I figli dei figli verranno copiati come figli  -->
  </xsl:template>
</xsl:stylesheet>
