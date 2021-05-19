<%@page import="Suporte.Tabela" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            try {
                String cintura_txt, quadril_txt;
                float cintura, quadril;
                cintura = 0f;
                quadril = 0f;
                
                
                cintura_txt = request.getParameter("peso");
                quadril_txt = request.getParameter("altura");
                
                cintura = Float.parseFloat(cintura_txt);
                quadril = Float.parseFloat(quadril_txt);
                
                float imc = cintura / quadril;
                //out.println("IMC = " + imc + ".<br>");
                
                out.println( new Tabela().CalculoImc(cintura, quadril) ); 
               
                
            } catch(NumberFormatException e){
                out.print("Erro.<br>Digite apenas números!");
            }
        %>
    </body>
</html>