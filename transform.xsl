<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="raiddata">
  <h2>Woe Loot</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Raider</th>
      <th style="text-align:left">Item</th>
    </tr>
    <xsl:for-each select="raiddata/items/item">
    <tr>
      <td><xsl:value-of select="member" /></td>
      <td><xsl:value-of select="name" /></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>