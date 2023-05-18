<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Curriculum</title>
        <link type="text/css" rel="stylesheet" href="estilo.css"/>
      </head>
      <body>
        <header>
          <h1>Curriculum Vitae</h1>
        </header>
        <section>
          <div class="personal-main-div">
            <div class="title-div">
              <h2>Datos Personales</h2>
              <hr/>
            </div>
            <div class="personal-div1">
              <p>Nombre: <xsl:value-of select="Curriculum/DatosPersonales/Nombre"/></p>
              <p>Apellidos: <xsl:value-of select="Curriculum/DatosPersonales/Apellidos"/></p>
              <p>Fecha de nacimiento: <xsl:value-of select="Curriculum/DatosPersonales/FechaNacimiento"/></p>
            </div>
            <div class="personal-div2">
              <p>Lugar de nacimiento: <xsl:value-of select="Curriculum/DatosPersonales/LugarNacimiento"/></p>
              <xsl:for-each select="Curriculum/DatosPersonales/Nacionalidades/Nacionalidad">
                <xsl:sort select="Nacionalidad" order="descending"/>
                <p>Nacionalidad: <xsl:value-of select="."/></p>
              </xsl:for-each>
              <p>DNI: <xsl:value-of select="Curriculum/DatosPersonales/DNI"/></p>
            </div>
            <hr/>
          </div>
          <div class="contact-main-div">
            <div class="title-div">
              <h2>Datos Contacto</h2>
              <hr/>
            </div>
            <div class="contact-div1">
              <p>Tipo de via: <xsl:value-of select="Curriculum/DatosContacto/TipoVia"/></p>
              <p>Nombre de via: <xsl:value-of select="Curriculum/DatosContacto/NombreVia"/></p>
              <p>Numero: <xsl:value-of select="Curriculum/DatosContacto/Numero"/></p>
              <p>Portal: <xsl:value-of select="Curriculum/DatosContacto/Portal"/></p>
              <p>Escalera: <xsl:value-of select="Curriculum/DatosContacto/Escalera"/></p>
              <p>Piso: <xsl:value-of select="Curriculum/DatosContacto/Piso"/></p>
              <p>Puerta: <xsl:value-of select="Curriculum/DatosContacto/Puerta"/></p>
              <p>Codigo postal: <xsl:value-of select="Curriculum/DatosContacto/CodigoPostal"/></p>
            </div>
            <div class="contact-div2">
              <p>Puerta: <xsl:value-of select="Curriculum/DatosContacto/Pais"/></p>
              <p>Puerta: <xsl:value-of select="Curriculum/DatosContacto/Email"/></p>
              <p>Puerta: <xsl:value-of select="Curriculum/DatosContacto/Telefono"/></p>
              <p>Puerta: <xsl:value-of select="Curriculum/DatosContacto/TelefonoFijo"/></p>
              <p>Pagina Web:: <xsl:value-of select="Curriculum/DatosContacto/PaginaWeb"/></p>
              <p>Redes Sociales:</p>
              <xsl:for-each select="Curriculum/DatosContacto/RedesSociales/Red">
                <xsl:sort select="Red" order="descending"/>
                <p>Nombre: <xsl:value-of select="Nombre"/></p>
                <p>Usuario: <xsl:value-of select="Usuario"/></p>
              </xsl:for-each>
            </div>
            <hr/>
          </div>
          <div class="academy-main-div">
            <div class="title-div">
              <h2>Formacion académica</h2>
              <hr/>
            </div>
            <div class="academy-div1">
              <h4>Estudio:</h4>
              <p>Nombre: <xsl:value-of select="Curriculum/FormacionAcademica/Estudio/Nombre"/></p>
              <p>Lugar: <xsl:value-of select="Curriculum/FormacionAcademica/Estudio/Lugar"/></p>
              <p>Fecha de inicio: <xsl:value-of select="Curriculum/FormacionAcademica/Estudio/FechaInicio"/></p>
              <p>Fecha de fin: <xsl:value-of select="Curriculum/FormacionAcademica/Estudio/FechaFin"/></p>
            </div>
            <hr/>
          </div>
          <div class="languages-main-div">
            <div class="title-div">
              <h2>Idiomas</h2>
              <hr/>
            </div>
            <div class="languages-div1">
              <xsl:for-each select="Curriculum/Idiomas/Idioma">
                <xsl:sort select="Idioma" order="descending"/>
                <h4>Idioma</h4>
                <p>Nombre: <xsl:value-of select="Nombre"/></p>
                <p>Expresion oral: <xsl:value-of select="ExpresionOral"/></p>
                <p>Compresion oral: <xsl:value-of select="CompresionOral"/></p>
                <p>Expresion escrita: <xsl:value-of select="ExpresionEscrita"/></p>
                <p>Compresion escrita: <xsl:value-of select="CompresionEscrita"/></p>
                <p>Titulo: <xsl:value-of select="Titulo"/></p>
                <p>Nivel del titulo: <xsl:value-of select="NivelTitulo"/></p>
              </xsl:for-each>
            </div>
            <hr/>
          </div>
            <div class="laboral-main-div">
            <div class="title-div">
              <h2>Experiencia laboral</h2>
              <hr/>
            </div>
            <div class="laboral-div1">
                <xsl:for-each select="Curriculum/ExperienciaLaboral/Experiencia">
                <xsl:sort select="Experiencia" order="descending"/>
                <h4>Experiencia</h4>
                <p>Lugar: <xsl:value-of select="Lugar"/></p>
                <p>Puesto: <xsl:value-of select="Puesto"/></p>
                <p>Fecha de inicio: <xsl:value-of select="FechaInicio"/></p>
                <p>Fecha de finalizacion: <xsl:value-of select="FechaFin"/></p>
              </xsl:for-each>
            </div>
            <hr/>
            </div>
        </section>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>