<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<body>
			<h1>Ofertes més demandades</h1>
				<table border="1">
					<tr bgcolor="yellow">
						<th style="text-align:center">CODI</th>
						<th style="text-align:center">NOM</th>
						<th style="text-align:center">TIPUS</th>
						<th style="text-align:center">DATA</th>
						<th style="text-align:center">PREU</th>
					</tr>
					<xsl:for-each select="CATALEG/MODEL">
						<tr>
							<td style="text-align:left; text-transform:lowercase"><xsl:value-of select="@CODI"/></td>
							<td style="text-align:left; font-style:italic"><xsl:value-of select="NOM"/></td>
							<td style="text-align:center"><xsl:value-of select="@TIPUS"/></td>
							<td style="text-align:center"><xsl:value-of select="ALTA"/></td>
							<td style="text-align:center; font-weight:bold"><xsl:value-of select="PREU"/>€</td>
						</tr>
					</xsl:for-each>
				</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>