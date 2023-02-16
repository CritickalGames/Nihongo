<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="/math/grado">

  <xsl:for-each select="unidad">
    <div class="row">
      <div class="col-2 border-bottom border-white bg-dark" id="divIzquierdo">
        <h3>Temas del Grado <xsl:value-of select="../titulo"></xsl:value-of></h3>
        
        <h5 class="bg-primary"><xsl:value-of select="titulo"></xsl:value-of></h5>

          <ol class="bg-success">
        <!--ForEach-->
            <xsl:for-each select="tema">
              <li class="mb-2"><xsl:value-of select="titulo" /></li>
            </xsl:for-each>
          </ol>
      </div>

      
    <!--Cambio de div-->
      <div class="col-7 bg-secondary alig-content-center border-bottom border-white">
        <h1 class="d-flex align-items-center justify-content-center">
          Matemáticas Grado <xsl:value-of select="../titulo" />
        </h1>
        <h3 class="d-flex align-items-center justify-content-center">
          <xsl:value-of select="titulo" />
        </h3>

        <!--ForEach-->
        <xsl:for-each select="tema">
          <div class="bg-danger my-3 pb-1">
            <h1 class="d-flex align-items-center justify-content-center">
              <xsl:value-of select="titulo" />
            </h1>

            <!--ForEach-->
            <xsl:for-each select="subtema">
              <div class="bg-info my-1 mx-1">
                <p><xsl:value-of select="titulo" /></p>
                <p><xsl:value-of select="teorico" /></p>
              </div>
              <!--ForEach-->
              <xsl:for-each select="ejercicios/demostracion">
                <div class="bg-warning my-1 mx-1">
                  <h3><xsl:value-of select="letra" /></h3>
                  <xsl:for-each select="pasos/paso">
                      <p><xsl:value-of select="." /></p>
                  </xsl:for-each>
                </div>
              </xsl:for-each>
              <!--ForEach-->
              <xsl:for-each select="ejercicios/practicos/practico">
                <div class="bg-warning my-1 mx-1">
                  <h3><xsl:value-of select="letra" /></h3>
                  <xsl:for-each select="paso">
                      <p><xsl:value-of select="." /></p>
                  </xsl:for-each>
                </div>
              </xsl:for-each>
              
            </xsl:for-each>

            
          
          </div>
        </xsl:for-each>
        
      </div>

      
        <!--Cambio de div-->


        <div class="col bg-info border-bottom border-white" id="divDerecho">
          <h3 class="bg-dark text-white ">Herramientas</h3>
          <!--ForEach-->
          <xsl:for-each select="tema">
            <h6 class="bg-warning"><xsl:value-of select="titulo" /></h6>
          
            <div class="bg-danger my-3 py-1">
              <!--ForEach-->
              <xsl:for-each select="subtema">
                <div class="bg-success my-1 mx-1">
                  <xsl:for-each select="herramientas/axiomas/axioma">
                    <p><xsl:value-of select="titulo" /></p>
                  </xsl:for-each>
                  <xsl:for-each select="herramientas/terminos/termino">
                    <p><xsl:value-of select="titulo" /></p>
                  </xsl:for-each>
                  <xsl:for-each select="herramientas/teoremas/teorema">
                    <p><xsl:value-of select="titulo" /></p>
                  </xsl:for-each>
                </div>
              </xsl:for-each>

            </div>
          </xsl:for-each>
    
        </div>
  
    </div>
  </xsl:for-each>


  <div >
    <ul class="list-group">
        <li class="list-group-item active"><h1>Bibliografia de <xsl:value-of select="titulo"/>º</h1></li>
      <xsl:for-each select="bibliografia/libro">
        <li class="list-group-item"><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </div>
</xsl:template>

</xsl:stylesheet>