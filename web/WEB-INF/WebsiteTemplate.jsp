<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Alpha-Cabs</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/styles.css">
    </head>
    <body>

        <section id="body" class="width">
            <aside id="sidebar" class="column-left">
                <header>
                <h1><a href="${pageContext.request.contextPath}/Index.jsp">Kieran Sears</a></h1>
                <img src="${pageContext.request.contextPath}/RESOURCES/head.png" alt="Photo" class="center">
                </header>
                <nav id="mainnav">
                    <ul>
                        <li><form action="About" method="post"> <input class="button" type="submit" value="About"></form></li>
                        <li><form action="Learning" method="post"> <input class="button" type="submit" value="Learning"></form></li>
                        <li><form action="BScDissertation" method="post"> <input class="button" type="submit" value="BSc. Dissertation"></form></li>
                         <li><form action="Unity" method="post"> <input class="button" type="submit" value="Unity Projects"></form></li>
                        <li><form action="Contact" method="post"> <input class="button" type="submit" value="Contact"></form></li>
                    </ul>
                </nav>		
            </aside>
                <aside id="sidebar" class="column-right">
                    
                </aside>
            <section id="content" class="column-right">        		
                <jsp:include page="${page}" />
                <footer class="clear">
               
                </footer>
            </section>
            <div class="clear"></div>
        </section>

    </body>
</html>
