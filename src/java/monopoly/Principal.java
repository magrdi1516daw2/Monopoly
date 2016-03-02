package monopoly;

import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author marta
 */
public class Principal {

    public static void main(String[] args) {
  
        Taulell taulell = new Taulell();
        ArrayList <Casella> casellesM = taulell.getCaselles();
        //Iniciem partida creem jugadors
        Jugador jugador1 = new Jugador("Marta");
        Jugador jugador2 = new Jugador();
        //jugador2.setNom("Claudia");
        //
        System.out.println(jugador1);
        System.out.println(jugador2);
        //Cada torn tirar tots els jugadors
         System.out.println(jugador1.tirarDau());
         System.out.println(jugador1.onEs());
        // System.out.println(jugador1.tirarDau());
        //System.out.println(jugador1.onEs());
         System.out.println(taulell.getCasella(jugador1.getCasella()));
         System.out.println(jugador1.getCasella());
         int numActual=jugador1.getCasella();
         Casella actual=casellesM.get(numActual);
          if(actual.getPropietari()==null){
               // if(comprar==true){
                        //System.out.println("Hola que tal mu buena a todoh");
                        String nom=jugador1.getNom();
                        System.out.println(nom);
                        actual.setPropietari(nom);
                        System.out.println(actual);
                        casellesM.set(1,actual);
               // }
          }
         
         
         
         /*if(taulell.getCasella(jugador1.getCasella())==null){
             System.out.println("Vols comprar la casella?");
         
         
         }*/
         

        
    }
    
}
