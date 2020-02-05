<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/films">
		<head>
			<META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<title>Films</title>
		</head>
		<body>
			<h1>Films</h1>
			<table>
				<thead>
					<tr>
						<th>Titre</th><th>Résumé</th><th>Réalisateur</th>
					</tr>
				</thead>
				<xsl:apply-templates select="film" />
			</table>
		</body>


	</xsl:template>

	<xsl:template match="film">
		<tr>
			<td>
				<xsl:value-of select="titre"/>
			</td>
			<td>
				<xsl:value-of select="resume/text"/>
			</td>
			<td>
				<xsl:variable name="real"><xsl:value-of select="@id_realisateur"/></xsl:variable>
				<xsl:value-of select="../realisateur[@id_realisateur=$real]/prenom"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="../realisateur[@id_realisateur=$real]/nom"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>