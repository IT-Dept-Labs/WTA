<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  	<table>
  		<tr>
  			<th>Name</th>
  			<th>Genre</th>
  			<th>Place</th>
  		</tr>
  		<xsl:for-each select= "book/ad">
  			<xsl:if test="genre='Pop'">
	  			<tr bgcolor="green">
	  				<td><xsl:value-of select="name"/></td>
	  				<td><xsl:value-of select="genre"/></td>
	  				<td><xsl:value-of select="venue"/></td>
	  			</tr>
  			</xsl:if>
  			<xsl:if test="genre='Classical'">
	  			<tr bgcolor="yellow">
	  				<td><xsl:value-of select="name"/></td>
	  				<td><xsl:value-of select="genre"/></td>
	  				<td><xsl:value-of select="venue"/></td>
	  			</tr>
  			</xsl:if><xsl:if test="genre='Instrumental'">
	  			<tr bgcolor="blue">
	  				<td><xsl:value-of select="name"/></td>
	  				<td><xsl:value-of select="genre"/></td>
	  				<td><xsl:value-of select="venue"/></td>
	  			</tr>
  			</xsl:if>
  		</xsl:for-each>
  	</table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
