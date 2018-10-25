<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<table cellpadding="5" cellspacing="5">
					<tr>
						<th>Name</th>
						<th>Venue</th>
						<th>Date</th>
						<th>Genre</th>
						<th>Performers</th>
						<th>Ticket</th>
						<th>Seller</th>
						<th>Discount</th>
					</tr>
					<xsl:for-each select="book/ad">
						<xsl:if test="venue/addres = 'Mangalore' and contains(venue/date, 'April')">
							<xsl:if test="discount &gt; 0">
								<tr bgcolor="#33d4ff">
									<td><xsl:value-of select="name"/></td>
									<td><xsl:value-of select="venue"/></td>
									<td><xsl:value-of select="date"/></td>
									<td><xsl:value-of select="genre"/></td>
									<td><xsl:value-of select="	performers"/></td>
									<td><xsl:value-of select="ticket"/></td>
									<td><xsl:value-of select="seller"/></td>
									<td><xsl:value-of select="discount"/></td>
								</tr>
							</xsl:if>
							<xsl:if test="discount = 0">
								<tr>
									<td><xsl:value-of select="name"/></td>
									<td><xsl:value-of select="venue"/></td>
									<td><xsl:value-of select="date"/></td>
									<td><xsl:value-of select="genre"/></td>
									<td><xsl:value-of select="	performers"/></td>
									<td><xsl:value-of select="ticket"/></td>
									<td><xsl:value-of select="seller"/></td>
									<td><xsl:value-of select="discount"/></td>
								</tr>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
