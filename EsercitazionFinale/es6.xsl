<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="html"/>
   <xsl:template match="/*">
      <html>
         <body>
            Bibliografia:
            <ol>
               <xsl:apply-templates select="voce"/><!-- Applica un template a tutti gli elementi voce  -->
            </ol>
         </body>
      </html>
   </xsl:template>

   <xsl:template match="voce"><!-- Match con il tag voce -->
      <li>
         <xsl:value-of select="tipoPub"/><!-- resituisce il valore del tipoPub(libro,articolo)  -->
         :
         <ul>
            <xsl:apply-templates select="*"/><!-- Applica dentro di questa ul, dei template ad ogni elemento, praticamente i templates per gli eleementi restanti non definiti fino ad ora -->
         </ul>
      </li>
   </xsl:template>

   <xsl:template match="autori"><!-- Match con il tag autori  -->
      <li>
         Autori:
         <ol>
            <xsl:for-each select="autore"><!-- Per ogni tag autore dentro il tag autori -->
               <li>
                  <xsl:value-of select="."/><!-- Ritorna il valore del tag autore -->
               </li>
            </xsl:for-each>
         </ol>
      </li>
   </xsl:template>

   <xsl:template match="titolo"><!-- Match con il tag titolo  -->
      <li>
         Titolo:
         <xsl:value-of select="."/><!-- Ritorna il valore dell'elemento attuale(titolo)  -->
      </li>
   </xsl:template>

   <xsl:template match="data"><!-- Match con il tag data  -->
      <li>
         Data:
         <xsl:value-of select="giorno"/><!--Dentro il tag data, select il tag giorno e resituisce il suo valore  -->
         /
         <xsl:value-of select="mese"/><!--Dentro il tag data, select il tag mese e resituisce il suo valore  -->
         /
         <xsl:value-of select="anno"/><!--Dentro il tag data, select il tag anno e resituisce il suo valore  -->
      </li>
   </xsl:template>

   <xsl:template match="text()"/><!-- Overwrite default method, evitando quindi di copiare il testo -->

</xsl:stylesheet>
