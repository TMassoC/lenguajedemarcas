<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:media="http://search.yahoo.com/mrss/"
    xmlns:atom="http://www.w3.org/2005/Atom"
    version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <link
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous"></link>
                <title>El País</title>
            </head>
            <body>
                <!-- Cabecera-->
                <header class="header">
                    <nav class="navbar bg-body-tertiary">
                        <div class="container-fluid">
                            <span class="navbar-text">
                                <h1>
                                    <xsl:value-of select="rss/channel/title"></xsl:value-of>
                                </h1>

                            </span>
                            <span class="navbar-text">
                                <xsl:value-of select="rss/channel/description"></xsl:value-of>
                            </span>
                            <span>
                                <xsl:value-of select="rss/channel/lastBuildDate"></xsl:value-of>
                            </span>

                        </div>
                    </nav>
                </header>
                <!-- Noticias-->
                <main>
                    <xsl:for-each select="rss/channel/item">
                        <div class="card mb-3" style="max-width: 650px;">
                            <div class="row g-0">
                                <div class="col-md-4">

                                    <img src="{media:content/@url}" class="img-fluid rounded-start"
                                        alt="{media:content/media:title}"></img>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <xsl:value-of select="title"></xsl:value-of>
                                        </h3>
                                        <p class="card-text">
                                            <xsl:value-of select="description"></xsl:value-of>
                                        </p>
                                        <p class="card-text">
                                            <small class="text-muted">
                                                <xsl:value-of select="pubDate"></xsl:value-of>
                                            </small>
                                        </p>
                                        <p class="card-text">
                                            <small class="text-muted">
                                                <xsl:value-of select="dc:creator"></xsl:value-of>
                                            </small>
                                        </p>
                                        <p class="card-text">
                                            <small class="text-muted"></small>
                                        </p>
                                        <p class="card-text">
                                            <small class="text-muted">

                                                <a href="{link}" class="btn btn-secondary"
                                                    tabindex="-1" role="button" aria-disabled="true">Leer
                                                    más</a>
                                            </small>
                                        </p>
                                        <p class="card-text">
                                            <small class="text-muted">
                                                <xsl:for-each select="category"> [<xsl:value-of
                                                        select="."></xsl:value-of>] </xsl:for-each>
                                            </small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </xsl:for-each>
                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                          <div class="card">
                            <img src="..." class="card-img-top" alt="..."></img>
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                          </div>
                        </div>
                    </div>

                </main>

                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>