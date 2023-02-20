<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/clase">


    <div class="row">
        <div class="col-1 "/>

        <xsl:for-each select="tema">

            <div class="col bg-info">
                <h1><xsl:value-of select="../titulo"/></h1>

                <h4><xsl:value-of select="./@titulo"/></h4>
                <xsl:for-each select="subtema">
                    <h4><xsl:value-of select="./@titulo"/></h4>
                    
                    <xsl:for-each select="p">
                        <xsl:if test="./@parrafo=&quot;&quot;">

                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:if>

                        <xsl:choose>

                            <xsl:when test="tabla/@type=&quot;&quot;">
                                <br/>
                                <table>
                                    <tr bgcolor="#72ecfa">
                                        <th><xsl:value-of select="tabla/@titulo"/></th>
                                    </tr>
                                    <xsl:for-each select="tabla/tr">
                                        <tr bgcolor="#fa8072">
                                            <td>
                                                <xsl:value-of select="."/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                        
                                </table>
                            </xsl:when>
                            <xsl:when test="tabla/@type=&quot;celdas&quot;">
                                <br/>
                                <table class="celdas">
                                    <xsl:for-each select="tabla/tr">
                                        <tr bgcolor="#fa8072">
                                            <xsl:for-each select="td">
                                                <td bgcolor="#ffffff">
                                                    <xsl:value-of select="."/>
                                                </td>
                                            </xsl:for-each>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </xsl:when>
                            <xsl:when test="tabla/@type=&quot;cajas&quot;">
                                <br/>
                                <table class="cajas">
                                    <tr bgcolor="#ffffff">
                                        <th><xsl:value-of select="tabla/@titulo"/></th>
                                    </tr>
                                    <xsl:for-each select="tabla/tr">
                                        <tr bgcolor="#fa8072">
                                            <td bgcolor="#ffffff">
                                                <xsl:value-of select="."/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </xsl:when>
                        </xsl:choose>

                    </xsl:for-each>

                    
                    

                    <hr/>
                </xsl:for-each>
            </div>



        </xsl:for-each>

        <div class="col-1"/>
    </div>
</xsl:template>

</xsl:stylesheet>