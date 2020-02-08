<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/films">
        <head>
            <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Films</title>
        </head>
        <body>
            <h1>Liste des films</h1>
            <xsl:apply-templates select="film"/>
        </body>
    </xsl:template>

    <xsl:template match="film">
        <table width="60%">
            <tr>
                <xsl:variable name="real"><xsl:value-of select="@id_realisateur"/></xsl:variable>
                <td colspan="2"><b><xsl:value-of select="titre"/></b><i> (<xsl:value-of select="../realisateur[@id_realisateur=$real]/prenom"/>,
                    <xsl:value-of select="../realisateur[@id_realisateur=$real]/nom"/>)</i></td>
            </tr>
            <tr>
                <td colspan="2"><xsl:value-of select="resume/text"/></td>
            </tr>
            <tr>
                <td>
                    <xsl:value-of select="/resume/imgage"/><!-- TODO Marche pas -->
                </td>

            </tr>
            <hr/>
        </table>
    </xsl:template>

</xsl:stylesheet>