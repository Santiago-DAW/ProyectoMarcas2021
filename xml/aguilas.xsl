<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" href="aguilas.css"/>
        </head>

        <body>
        <h2>Aguilas</h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th style="text-align:left">Nombre</th>
                <th style="text-align:left">Peso</th>
                <th style="text-align:left">Longitud</th>
            </tr>
            <xsl:for-each select="aguilas/aguila">
                <tr>
                    <td><xsl:value-of select="nombre_comun"/></td>
                    <td><xsl:value-of select="peso"/></td>
                    <td><xsl:value-of select="longitud"/></td>
                </tr>
            </xsl:for-each>
        </table>

            <xsl:for-each select="aguilas/aguila">
                <div class="tarjeta">

                    <!-- <div class="imagen">
                        <img src="./imagenesXml/aguila_01.jpg" />
                    </div> -->
                    <div class="nombres">
                        <h2>
                            <xsl:value-of select="nombre_comun"></xsl:value-of>
                        </h2>
                        <h3>
                            <xsl:value-of select="nombre_cientifico"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="detalles">
                        <p><span>Longitud: </span>
                            <xsl:value-of select="longitud"></xsl:value-of>
                        </p>
                        <p><span>Embergadura alar: </span>
                            <xsl:value-of select="embergadura_alar"></xsl:value-of>
                        </p>
                        <p><span>Peso: </span>
                            <xsl:value-of select="peso"></xsl:value-of>
                        </p>
                    </div>

                </div>
            </xsl:for-each>

        <!-- <button type="button" onclick="loadXMLDoc()">
                Hacer clic sobre el botón</button>
                
                <p id="demo"></p>
                <script>
                    function loadXMLDoc() {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function() {
                        if (this.readyState == 4 &amp;&amp; this.status == 200) {
                            myFunction(this);
                        }
                    };
                    xmlhttp.open("GET", "aguilas.xml", true);
                    xmlhttp.send();
                    }
                    
                    function myFunction(xml) {
                        var x, y, i, xmlDoc, txt;
                        xmlDoc = xml.responseXML;
                        txt = "";
                        x = xmlDoc.getElementsByTagName("aguila");
                        for (i = 0; i &lt; x.length; i++) {
                            y = x[i];
                            txt += y[i].childNodes[0].nodeValue + "&lt;br&gt;";
                            txt += x[i].childNodes[0].childNodes[0].nodeValue + "&lt;br&gt;";
                            txt += i;
                        }
                        document.getElementById("demo").innerHTML = txt;
                    }
                    </script> -->
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>