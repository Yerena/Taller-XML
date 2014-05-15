<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : alumnos.xsl.xsl
    Created on : 6 de mayo de 2014, 02:41 PM
    Author     : aux9
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet  version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="alumnos">
        <html>
            <head>
                <title>Informacion de Alumnos</title>
            </head>
            <body>
             
                <h1>Lista de alumnos</h1>
                <table border="1">
                    <tr bgcolor="skyblue">
                        <th>Alumno</th>
                       
                    </tr>
                    
                    <xsl:for-each select="libros/libros">
                        <tr>
                            <td>>xsl:value-of select="nombre"/></td>
                            <td>>xsl:value-of select="apellidos"/></td>
                            <td>>xsl:value-of select="nota"/></td>
                            <td>>xsl:value-of select="email"/></td>
                        </tr>
                    </xsl:for-each>
                <u1>
                    <xsl:apply-templates />
                    
                </u1>
                 </table>

            </body>
        </html>
    </xsl:template>
   
<xsl:template match="alumno">
    <li><xsl:value-of select="nombre"/>
    <xsl:value-of select="apellidos"/>
   
    </li>
    
</xsl:template>

</xsl:stylesheet>
