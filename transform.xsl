<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:template match="/">
  <h2>Woe Loot</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Date</th>
      <th style="text-align:left">Raider</th>
      <th style="text-align:left">Item</th>
      <th style="text-align:left">Reason</th>
    </tr>
    <xsl:for-each select="raidlog/raiddata/items/item">
    <tr>
      <td><xsl:value-of select='time'/></td>
      <td><xsl:value-of select="member" /></td>
      <td><a>
	  <xsl:attribute name="href" >
       <xsl:value-of select="itemid" />
	   </xsl:attribute>
	   <xsl:if test="count != ''">
	   <xsl:attribute name="rel" >
       <xsl:value-of select="count" />
	   </xsl:attribute>
	   </xsl:if>
	   <xsl:value-of select="name" /></a></td>
      <td><xsl:value-of select="note" /></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>