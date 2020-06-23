<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/*">
     <html>
        <body>
          <xsl:template match="t">
            <xsl:element name="table">
             
              <xsl:for-each select="r">
                <tr>
                  <xsl:for-each select="cel">
                    <td><xsl:value-of select="."/></td>
                  </xsl:for-each>
                </tr>
              </xsl:for-each>
              <xsl:apply-templates/>
            </xsl:element>
          </xsl:template>
        </body>
     </html>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
