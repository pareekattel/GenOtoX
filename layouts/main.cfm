<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>#fw.pageTitle#</title>
        <link rel="stylesheet" href="/includes/bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <cfinclude template="#fw.viewFile#">
        </div>
        <script src="/includes/bootstrap/js/jquery.slim.min.js"></script>
        <script src="/includes/bootstrap/js/popper.min.js"></script>
        <script src="/includes/bootstrap/js/bootstrap.min.js"></script>
    </body>
    </html>
</cfoutput>
