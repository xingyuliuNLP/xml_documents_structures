<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Documents Structurés</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

        <!-- Custom fonts for this template -->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
          rel="stylesheet" type="text/css"/>
        <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
          rel="stylesheet" type="text/css"/>

        <!-- Custom styles for this template -->
        <link href="../css/bao.css" rel="stylesheet"/>
      </head>
      <body>
        <!-- Navigation -->
        <nav class="navbar navbar-fixed-top navbar-expand-lg navbar-light bg-lignt fixed-top" id="mainNav">
          <div class="container">
            <a href=".././index.xml">
              <img src="../img/logo.jpg" alt="logo" class="nav-brand"/>
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
              data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
              aria-label="Toggle navigation"> Menu <i class="fas fa-bars"/>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="../index.xml">Accueil</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../1/exo1.xml">1</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../3/exo3.xml">3</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../4/exo4.xml">4</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../6/exo6.xml">6</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../13.1/exo131.xml">13.1</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../13.2/exo132.xml">13.2</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../14/exo14.xml">14</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="../16/exo16.xml">16</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- End nav -->
        <!-- Header -->
        <header class="masthead">
          <div class="container">
            <div class="row">
              <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                  <h1>Documents Structurés</h1>
                </div>
              </div>
            </div>
          </div>
        </header>
        <div class="container">
          <div class="row">
            <div class="col-lg-9 col-md-10 mx-auto">
            <center>
              <h2>
                <xsl:value-of select="exercice/titre"/>
                <xsl:text> : </xsl:text>
                <xsl:value-of select="exercice/description"/>
              </h2>
              </center>
              <xsl:variable name="var1" select="exercice/source/@xml"/>
              <center>
                <a target="_blank" href="{$var1}" download="">
                  <p class="text-danger">
                    <xsl:value-of select="exercice/source"/>
                  </p>
                </a>
              </center>
              <hr/>
              <hr/>
              <br/>
              <xsl:for-each select="exercice/question">
                <xsl:choose>
                  <xsl:when test="@n = '1'">
                    <center>
                      <h3> QUESTION <xsl:value-of select="@n"/>
                        <xsl:text> : </xsl:text>
                        <xsl:value-of select="@id"/>
                      </h3>
                    </center>
                    <br/>
                    <xsl:for-each select="./partie">
                      <h4> Partie <xsl:value-of select="@n"/>
                      </h4>
                      <p>
                        <xsl:value-of select="./consigne"/>
                      </p>
                      <xsl:for-each select="./reponse">
                        <p align="center">
                          <b>Requête XPath et résultat:</b>
                        </p>
                        <div class="row border border-danger">
                          <p class="col-8 border-right border-danger">
                            <code>
                              <xsl:value-of select="."/>
                            </code>
                          </p>
                          <p class="col-4">
                            <xsl:value-of select="../resultat"/>
                          </p>
                        </div>
                        <br/>
                        <br/>
                      </xsl:for-each>
                      <xsl:if test="position() != last()">
                        <center>
                          <h4>
                            <b>- - -</b>
                          </h4>
                        </center>
                        <br/>
                      </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="position() != last()">
                      <hr/>
                      <br/>
                    </xsl:if>
                  </xsl:when>

                  <xsl:when test="@n = '2'">
                    <center>
                      <h3>QUESTION <xsl:value-of select="@n"/>
                        <xsl:text> : </xsl:text>
                        <xsl:value-of select="@id"/>
                      </h3>
                    </center>
                    <br/>
                    <xsl:for-each select="./partie">
                      <h4>Partie <xsl:value-of select="@n"/>
                      </h4>
                      <p>
                        <xsl:value-of select="./consigne"/>
                      </p>
                      <br/>
                      <br/>
                      <xsl:for-each select="./reponse">
                        <center>
                          <h5>
                            <b>Feuille de style XSLT :</b>
                          </h5>
                        </center>
                        <div align="center">
                          <xsl:variable name="var2" select="./@xsl"/>
                          <p>
                            <iframe src="{$var2}" width="900" height="300" frameborder="5"/>
                          </p>
                        </div>
                        <div align="center">
                          <xsl:variable name="var3" select="./@xsl"/>
                          <a target="_blank" href="{$var3}" download="">
                            <button type="button" class="btn btn-outline-danger"
                              >Télécharger</button>
                          </a>
                          <p> Command line :</p>
                          <code>
                            <xsl:value-of select="."/>
                          </code>
                        </div>
                        <br/>
                        <br/>
                        <center>
                          <h5>
                            <b>Sortie :</b>
                          </h5>
                        </center>
                        <div align="center">
                          <xsl:variable name="var4" select="./@xml"/>
                          <p>
                            <iframe src="{$var4}" width="700" height="300" frameborder="5"/>
                          </p>
                        </div>
                        <div align="center">
                          <xsl:variable name="var5" select="./@xml"/>
                          <center>
                            <a target="_blank" href="{$var5}" download="">
                              <button type="button" class="btn btn-outline-danger"
                                >Télécharger</button>
                            </a>
                          </center>
                        </div>
                        <br/>
                        <br/>
                      </xsl:for-each>
                      <xsl:if test="position() != last()">
                        <center>
                          <h4>
                            <b>- - -</b>
                          </h4>
                        </center>
                        <br/>
                      </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="position() != last()">
                      <hr/>
                      <br/>
                    </xsl:if>
                  </xsl:when>
                  <xsl:when test="@n = '3'">
                    <center>
                      <h3>QUESTION <xsl:value-of select="@n"/>
                        <xsl:text> : </xsl:text>
                        <xsl:value-of select="@id"/>
                      </h3>
                    </center>
                    <br/>
                    <center>
                      <h5>
                        <b>Requête XQuery :</b>
                      </h5>
                    </center>
                    <div align="center">
                      <xsl:variable name="var6" select="./reponse/@xqy"/>
                          <p>
                            <iframe src="{$var6}" width="900" height="300" frameborder="5"/>
                          </p>
                    </div>
                    <div align="center">
                          <xsl:variable name="var7" select="./reponse/@xqy"/>
                          <center>
                            <a target="_blank" href="{$var7}" download="">
                              <button type="button" class="btn btn-outline-danger"
                                >Télécharger</button>
                            </a>
                          </center>
                        </div>
                        <br/>
                        <br/>
                        <center>
                          <h5>
                            <b>Sortie :</b>
                          </h5>
                        </center>
                        <div align="center">
                          <xsl:variable name="var8" select="./reponse/@xml"/>
                          <p>
                            <iframe src="{$var8}" width="700" height="300" frameborder="5"/>
                          </p>
                        </div>
                        <div align="center">
                          <xsl:variable name="var9" select="./reponse/@xml"/>
                          <center>
                            <a target="_blank" href="{$var9}" download="">
                              <button type="button" class="btn btn-outline-danger"
                                >Télécharger</button>
                            </a>
                          </center>
                        </div>
                        <hr/>
                        <hr/>
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </div>
          </div>
        </div>
        <!-- END section -->
        <footer>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 col-md-10 mx-auto">
                <ul class="list-inline text-center">
                  <li class="list-inline-item">
                    <a href="https://github.com/xingyuliuNLP">
                      <span class="fa-stack fa-lg">
                        <i class="fas fa-circle fa-stack-2x"/>
                        <i class="fab fa-github fa-stack-1x fa-inverse"/>
                      </span>
                    </a>
                  </li>
                  <li class="list-inline-item">
                    <a href="https://github.com/xiaoouwang">
                      <span class="fa-stack fa-lg">
                        <i class="fas fa-circle fa-stack-2x"/>
                        <i class="fab fa-github fa-stack-1x fa-inverse"/>
                      </span>
                    </a>
                  </li>
                </ul>
                <p class="copyright text-muted"> Créé par Xingyu LIU &amp; Xiaoou WANG ©2020 </p>
              </div>
            </div>
          </div>
        </footer>
        <!-- END footer -->

        <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"/>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
