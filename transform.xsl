<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
      <td><xsl:value-of select='xs:dateTime("1970-01-01T00:00:00") + time * xs:dayTimeDuration("PT0.001S")' /></td>
      <td><xsl:value-of select="member" /></td>
      <td><xsl:value-of select="name" /></td>
      <td><xsl:value-of select="note" /></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>