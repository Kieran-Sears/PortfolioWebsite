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

    <%--TODO PUT LOGIN BUTTON ON TOP RIGHT CORNER --%>
    
    <body>

        <section id="body" class="width">
            <aside id="sidebar" class="column-left">
                <header>
                    <h1><a href="#">Kieran Sears</a></h1>
                    <img  src="${pageContext.request.contextPath}/RESOURCES/head.png" alt="Photo" class="center">		
                </header>
                <nav id="mainnav">
                    <ul>
                       <li><form action="forms/About" method="post"> <input class="button" type="submit" value="About"></form></li>
                        <li><form action="forms/Learning" method="post"> <input class="button" type="submit" value="Learning"></form></li>
                        <li><form action="forms/BScDissertation" method="post"> <input class="button" type="submit" value="BSc. Dissertation"></form></li>
                         <li><form action="forms/Unity" method="post"> <input class="button" type="submit" value="Unity Projects"></form></li>
                        <li><form action="forms/Contact" method="post"> <input class="button" type="submit" value="Contact"></form></li>
                    </ul>
                </nav>		
            </aside>
            <section id="content" class="column-right">        		
                <article>					
                    <h2>Welcome</h2>

                    <p>
                        This website was created as a portfolio of my ongoing work. The content is centred
                        around the use of technologies to enhance learning. The use of empirical methodologies
                        are used to justify motives and objectives to this end.
                    
                    </p>
                </article>
                <footer class="clear">
                    
                </footer>
            </section>
            <div class="clear"></div>
        </section>
    </body>
</html>
