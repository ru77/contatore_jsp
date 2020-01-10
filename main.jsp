<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Contatore visite in jsp</title>
   </head>

   <body>
      <%
         Integer count = (Integer)application.getAttribute("hitCounter");
         if( count == null || count == 0 ) {
            out.println("Benvenuto!");
            count = 1;
         } else {
            out.println("Bentornato!");
            count += 1;
         }
         application.setAttribute("hitCounter", count);
      %>
      <center>
         <p>Numero totale di visite: <%= count%></p>
      </center>

   </body>
</html>
