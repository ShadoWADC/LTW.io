<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/*"><!-- Questo template si applica solo all'elemento radice -->
    <html>
				<body>
            Lista degli autori:
  			     <ol>
              <xsl:for-each select="voce"><!-- Per ogni elemento voce che incontro applico il contenuto del ciclo -->
                <xsl:for-each select="nomeAutore"><!-- Per ogni voce scandisce tutti i nomi degli autori e crea li  -->
                  <li><xsl:value-of select="."/></li><!-- Estrai il valore del contenuto attuale tramite . -->
                </xsl:for-each>
              </xsl:for-each>
             </ol>
             Lista dei titoli e anni:
            <ul>
            <xsl:apply-templates select="voce"/><!-- Applica la ricorsione per generare la ul -->
            <!-- Questa seconda lista sarà generata applicando il template ai nodi figli del nodo radice che si chiamano voce -->
            </ul>
            Lista degli titoli e anni dei libri:
            <ul>
              <xsl:for-each select="voce[tipoPub='libro']">
                  <li>
                    <xsl:for-each select="titolo">
                      <xsl:value-of select="."/>
                    </xsl:for-each>
                    -
                    <xsl:for-each select="titolo">
                      <xsl:value-of select="."/>
                    </xsl:for-each>
                  </li>
              </xsl:for-each>
            </ul>
            Lista degli titoli e anni degli articoli:
            <ul>
              <xsl:for-each select="voce[tipoPub='articolo']">
                  <li>
                    <xsl:for-each select="titolo">
                      <xsl:value-of select="."/>
                    </xsl:for-each>
                    -
                    <xsl:for-each select="titolo">
                      <xsl:value-of select="."/>
                    </xsl:for-each>
                  </li>
              </xsl:for-each>
            </ul>
				</body>
			</html>
  </xsl:template>

  <xsl:template match="voce"><!-- Questo template si applica per ogni elemento che si chiama voce -->
    <li>
      <xsl:value-of select="titolo"/><!-- Prendo il contenuto testuale dell'elemento xml figlio di questo elemento voce che ha come nome tag titolo  -->
      -
      <xsl:value-of select="anno"/><!-- Prendo il testo di tag anno -->
    </li>
  </xsl:template>
</xsl:stylesheet>
