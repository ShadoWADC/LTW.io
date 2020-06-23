<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/*">
     <html>
        <body>
          <xsl:template match="t">
            <xsl:element name="table">
              <xsl:attribute name="border">
                <xsl:value-of select="@b"/>
              </xsl:attribute>
              <xsl:for-each select="r">
                <tr>
                  <xsl:for-each select="cel">
                    <td><xsl:value-of select="."/></td>
                  </xsl:for-each>
                </tr>
              </xsl:for-each>
            </xsl:element>
          </xsl:template>
        </body>
     </html>
     <xsl:apply-templates select="*"/>
  </xsl:template>

  <xsl:template match="text()"/>

</xsl:stylesheet>
