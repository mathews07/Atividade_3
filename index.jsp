<%@page import="Suporte.Tabela" %>
<%@page import="Suporte.Usuario" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo RCQ</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h2>Calcular RCQ</h2>
        <div id="div_rcq">
            <p>RCQ = Relação Cintura-Quadril</p>
            <form action="calculo.jsp" method="get" target="result">
                Tamanho da Cintura (2 dedos acima do umbigo): <br><input type="text" name="peso"><br>
                Tamanho do Quadril ( medir na parte mais larga do quadril): <br><input type="text" name="altura"><br>

                <input type="submit" name="enviar" value="Calcular">
            </form>
        </div>
        <br><br>
        
        
        <div id="div_resultado">
            <iframe name="result" width="300" height="200"></iframe>
        </div>
        
        <%=new Tabela().getRcq() %>
        
        
        <%
            List<Usuario> p = new ArrayList<Usuario>();
            
            p.add(new Usuario("Francisco Mateus","T.A.D.S","2219100362",5));
            for(Usuario valor : p){
                out.print("---------------------------------<br>");
                out.print("Nome: " + valor.getNome() + "<br>");
                out.print("Curso: " + valor.getCurso()+ "<br>");
                out.print(valor.getRa());
                out.print("Semestre: " + valor.getSemestre()+ "º" + "<br>");
            }
            

            

        %>


    </body>
</html>
