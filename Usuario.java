package Suporte;

public class Usuario {
    
    private String nome;
    private String curso;
    private String ra;
    private int semestre;
    
    public Usuario(String nome,String curso,String ra,int semestre){
        this.nome = nome;
        this.curso = curso;
        this.ra = ra;
        this.semestre = semestre;
    

}

    public String getNome() {
        return nome;
    }

    
    public String getCurso() {
        return curso;
    }

    
    public String getRa() {
        return "RA : " +  ra + "<br>";
    }

    public int getSemestre() {
        return semestre;
    }
    
}
