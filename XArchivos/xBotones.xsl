<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/grados">


    <div class="form-floating">
        <select name="clases" class="form-select" id="floatingSelect">
            <xsl:for-each select="grado">
                
                <xsl:if test="./@estado=&quot;x&quot;">
                    <option class="bg-warning text-dark">
                        <xsl:value-of select="."/>
                    </option>
                </xsl:if>
                <xsl:if test="./@estado=&quot;&quot;">
                    <option class="">
                        <xsl:value-of select="."/>
                    </option>
                </xsl:if>
            </xsl:for-each>
        </select>
 <label for="floatingSelect">Clase</label>
    </div>


</xsl:template>

</xsl:stylesheet>