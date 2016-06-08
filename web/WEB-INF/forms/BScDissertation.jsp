<%-- 
    Document   : BScDissertation
    Created on : May 23, 2016, 3:39:28 PM
    Author     : Kieran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/styles.css">
        <title>Bsc Dissertation</title>
    </head>
    <body>
        <h1>Final Year Project</h1>
        <p>
            The project I chose for my undergraduate was the automated refactoring of software design models represented in Unified Modelling Language (UML).
        </p>
        <p>
            This task involved the parsing of software designs before their implementation.
        </p>
        <p>
            The design blueprints were formatted in XMI (v 2.4) files, an industry standard among UML design tools for the sake of compatibility. These files
            were read in by the prototype program and restructured based on best practice principles of Object Orientated design.
        </p>
        <p>
            This was done using metrics which measured the coupling, cohesion and mean number of elements per class. These metrics were chosen to ensure an
            even and effective distribution of concerns among the input design model's classes.
        </p>
        <p>
            These metrics guided a Genetic Algorithm, the evolutionary operators of which acted to migrate methods and attributes to neighbouring classes.
        </p>
        <p>
            One of the primary focus points of the project was the inclusion of Anti Patterns which would serve as heuristics to narrow the search space of the
            exponential number of combinations a software design with n elements could have.
        </p>
        <p>
            Results were displayed using a JavaFX GUI which outputted into graphs and diagrams the results of the best candidate solutions with the highest 
            quality metrics.
        </p>
        <p>
            Due to the complexity of the challenge my project sought to tackle there were numerous issues encountered. A handful of these are: issues of 
            uncertainty in regards to the input model's design or syntax, the propagation of changes to overlapping diagrams which depict the dynamic runtime 
            behaviours, recognising when patterns have been used in an inappropriate context, etc.
        </p>
        <p>
            For full details and the source code for this project visit <a href="https://github.com/Kieran-Sears/UML-Class-Refactorer">https://github.com/Kieran-Sears/UML-Class-Refactorer</a>
        </p>

    </body>
</html>
