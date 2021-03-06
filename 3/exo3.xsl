<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Documents Structurés</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Custom fonts for this template -->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />

        <!-- Custom styles for this template -->
        <link href="../css/bao.css" rel="stylesheet" />
      </head>
      <body>
        <!-- Navigation -->
        <nav class="navbar navbar-fixed-top navbar-expand-lg navbar-light fixed-top" id="mainNav">
          <div class="container">
            <a href=".././index.xml">
              <img src="../img/logo.jpg" alt="logo" class="nav-brand" />
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
              <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="../index.xml">Accueil</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../1/exo1.xml">1</a>
                </li>
                <li class="nav-item active">
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
                <li class="nav-item">
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
              <p>
                <xsl:value-of select="exercice/consigne"/>
              </p>
                  <xsl:for-each select="exercice/question">
                    <center><p>FICHIER <xsl:value-of select="@n"/>
                    <xsl:text> : </xsl:text>
                    <b>
                      <xsl:value-of select="@colonne"/>
                    </b>
                    </p></center>
                  </xsl:for-each>
                  <div class="row justify-content-md-center">
                  <a href='./FRA02301_Greville_0411.xml'>
                    <button type="button" class="btn btn-outline-danger">Document XML-TEI Xiaoou</button>
                  </a>
                  <a href='./FRA02701_Maupassant_V2.xml'>
                    <button type="button" class="btn btn-outline-danger">Document XML-TEI Xingyu</button>
                  </a>
                  </div>
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
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                          </span>
                        </a>
                      </li>
                      <li class="list-inline-item">
                        <a href="https://github.com/xiaoouwang">
                          <span class="fa-stack fa-lg">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                          </span>
                        </a>
                      </li>
                    </ul>
                    <p class="copyright text-muted">
              Créé par Xingyu LIU &amp; Xiaoou WANG ©2020
                    </p>
                  </div>
                </div>
              </div>
            </footer>
            <!-- END footer -->

        <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>