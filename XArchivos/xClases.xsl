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

                            <xsl:when test="tabla/@class=&quot;&quot;">
                                <br/>

                                <xsl:apply-templates select="tabla"/>
                                
                            </xsl:when>
                            <xsl:when test="tabla/@class=&quot;celdas&quot;">
                                <br/>
                                <table class="celdas mx-auto">
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
                            <xsl:when test="tabla/@class=&quot;cajas&quot;">
                                <br/>
                                <table class="cajas">
                                    
                                    <xsl:if test="tabla/@titulo!=&quot;&quot;">
                                        <tr bgcolor="#ffffff">
                                            <th><xsl:value-of select="tabla/@titulo"/></th>
                                        </tr>
                                    </xsl:if>
                                    <xsl:for-each select="tabla/tr">
                                        <tr bgcolor="#fa8072">
                                            <td bgcolor="#ffffff">
                                                <xsl:value-of select="."/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </xsl:when>
                            <xsl:when test="div/class=&quot;contenedor&quot;">
                                
                            </xsl:when>
                        </xsl:choose>
                            <xsl:apply-templates select="div"/>
                            <br/>
                    </xsl:for-each>


                    <hr/>
                </xsl:for-each>
            </div>



        </xsl:for-each>

        <div class="col-1"/>
    </div>
</xsl:template>


<xsl:template match="tabla">
    <table>
        <tr bgcolor="#72ecfa" class="text-center">
            <th><xsl:value-of select="./@titulo"/></th>
        </tr>
        <xsl:for-each select="./tr">
            
            <xsl:choose>
                <xsl:when test="../@color=&quot;morado&quot;">
                    <tr bgcolor="#B98FEB">
                        <td>
                            <xsl:value-of select="."/>
                        </td>
                    </tr>
                </xsl:when>
                <xsl:when test="../@color=&quot;amarrillo&quot;">
                    <tr bgcolor="#F1F2B3">
                        <td>
                            <xsl:value-of select="."/>
                        </td>
                    </tr>
                </xsl:when>
                <xsl:otherwise>
                    <tr bgcolor="#ec5555">
                        <td>
                            <xsl:value-of select="."/>
                        </td>
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
            
    </table>
</xsl:template>

<xsl:template match="div">
    <xsl:choose>
        <xsl:when test="./@color=&quot;morado&quot;">
            <div class="morado">
                <h4><xsl:value-of select="./@titulo"/></h4>
                <xsl:for-each select="./p">
                    <p><xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
        </xsl:when>
        <xsl:when test="./@color=&quot;verde&quot;">
            <div class="verde">
                <h4><xsl:value-of select="./@titulo"/></h4>
                <xsl:for-each select="./p">
                    <p><xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
        </xsl:when>
        <xsl:when test="./@color=&quot;naranja&quot;">
            <div class="naranja">
                <h4><xsl:value-of select="./@titulo"/></h4>
                <xsl:for-each select="./p">
                    <p><xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
        </xsl:when>
        <xsl:otherwise>
            <div class="estandar">
                <h4><xsl:value-of select="./@titulo"/></h4>
                <xsl:for-each select="./p">
                    <p><xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>


</xsl:stylesheet>