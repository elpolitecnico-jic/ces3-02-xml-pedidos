<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="5.0" method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/pedidos">
        <html>
            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
            </head>
            <body>

                <h1>Lista Pedidos</h1>

                <hr/>

                <xsl:for-each select="pedido">

                    <h2>Num. pedido: <xsl:value-of select="@numeropedido"/></h2>

                    <section>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Numero Serie</th>
                                    <th>Cantidad</th>
                                    <th>Peso</th>
                                </tr>
                            </thead>
                            <tbody>
                            <xsl:for-each select="producto">
                                <tr>
                                    <td><xsl:value-of select="numeroserie"/></td>
                                    <td><xsl:value-of select="cantidad"/></td>
                                    <td><xsl:value-of select="peso"/></td>
                                </tr>
                            </xsl:for-each>
                            </tbody>
                        </table>
                    </section>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>