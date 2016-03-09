package monopoly;


/**
 *
 * @author marta
 */
public class Jugador {
    private String nom;
    private int diners;
    private int casella;
    private boolean tirar;
    private String color;

    public Jugador() {
        diners = 300000;
        casella = 0;
    }

    
    
    public Jugador(String nom,String color) {
        this.nom = nom;
        this.color = color;
        diners = 300000;
        casella = 0;
    }

    public void setCasella(int casella) {
        
        this.casella = (this.casella + casella) % 39;// sumem el dau a la casella el % 39 es per fer que arriba al 39 torni a començar
        if(this.casella==10){
        this.casella=30;      
        }
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
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
        return "El jugador "+ nom + " té " + diners + "euros.</br></br>";
    }
    
    
    
    public String tirarDau(){
          int num = (int) Math.ceil(Math.random() * 6);
              casella += num;
                  
              
    return "El jugador "+ nom +" ha tret un "+ num +".";
        
    }
    
    public String onEs(){
    return "El jugador "+nom+" esta a la casella "+ casella+".</br></br>";
            }
    
   /* cobrar(int preu){
   }*/
}