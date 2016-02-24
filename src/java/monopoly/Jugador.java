package monopoly;


/**
 *
 * @author marta
 */
public class Jugador {
    private String nom;
    private int diners;
    private int casella;

    public Jugador() {
        diners = 30000;
        casella = 0;
    }

    
    
    public Jugador(String nom) {
        this.nom = nom;
        diners = 30000;
        //casella = 0;
    }


    
    public String getNom() {
        return nom;
    }


    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getDiners() {
        return diners;
    }

    public void setDiners(int diners) {
        this.diners = diners;
    }

    public int getCasella() {
        return casella;
    }

       
    @Override
    public String toString() {
        return "Jugador{" + "nom=" + nom + ", diners=" + diners + '}';
    }
    
    
    
    public String tirarDau(){
          int num = (int) Math.ceil(Math.random() * 6);
              casella += num;
              
                      
    return "El jugador "+ nom +" ha tret un "+ num +".";
        
    }
    
    public String onEs(){
    return "El jugador "+nom+" esta a la casella "+ casella+".";
            }
    
   /* cobrar(int preu){
   }*/
}