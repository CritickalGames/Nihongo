<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/grados">


    <div class="form-floating">
        <select name="clases" class="form-select" id="floatingSelect">
            <xsl:for-each select="grado">
                <option>
                    <button class="boton_">
                        <xsl:value-of select="."/>
                    </button>
                </option>
            </xsl:for-each>
        </select>
 <label for="floatingSelect">Temas</label>
    </div>


</xsl:template>

</xsl:stylesheet>