<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<div class="panel panel-default">
  <div class="panel-heading">
    <h4 class="panel-title">
      <a data-toggle="collapse">
      <xsl:attribute name="href" >
        #<xsl:value-of select="/raidlog/head/export/name" />
      </xsl:attribute>
      <xsl:value-of select="/raidlog/head/export/name" /></a>
    </h4>
    </div>
    <div class="panel-collapse collapse">
	    <xsl:attribute name="id" >
          <xsl:value-of select="/raidlog/head/export/name" />
        </xsl:attribute>
      <div class="panel-body">
	    <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Date</th>
            <th style="text-align:left">Raider</th>
            <th style="text-align:left">Item</th>
            <th style="text-align:left">Reason</th>
            <th style="text-align:left">Zone</th>
            <th style="text-align:left">Boss</th>
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
            <td><xsl:value-of select="zone" /></td>
            <td><xsl:value-of select="boss" /></td>
          </tr>
          </xsl:for-each>
        </table>
	  </div>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>


