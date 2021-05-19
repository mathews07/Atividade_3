package Suporte;

public class Tabela {
        private String html = "";
    
    private void Rcq(){     
        
        html += "TABELA RCQ";
        html += "<p>Os resultados da relação cintura-quadril variam de acordo com o sexo, devendo ser de no máximo 0,80 para mulheres e 0,95 para homens.</p>";
        html += "<div align=\"left\">";
        html += "    <table border=\"1\" cellpadding=\"10\" width=\"300\" cellspacing=\"1\">";
        html += "        <tr><td><b>Risco de saúde</b></td>      <td><b>Mulher</b></td>   <td><b>Homem</b></td></tr>";
        html += "        <tr><td>Baixo</td>   <td>Inferior a 0,80</td>    <td>Inferior a 0,95</td></tr>";
        html += "        <tr><td>Moderado</td>              <td>0,81 a 0,85</td>    <td>0,96 a 1,0</td></tr>";
        html += "        <tr><td>Alto</td>     <td>Superior 0,86</td>    <td>Superior 1,0</td></tr>";
        html += "    </table>";
        html += "</div>";
    }

   
    public String getRcq(){
        Rcq();
        return html;
    } 
    
    public String CalculoImc(float cintura, float quadril){
        float rcq=0;
        rcq = cintura / quadril;
        return "RCQ = " + String.format("%.2f", rcq);
    }
    
    
}
