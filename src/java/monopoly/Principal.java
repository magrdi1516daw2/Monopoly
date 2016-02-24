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
        
        Jugador jugador1 = new Jugador("Marta");
        Jugador jugador2 = new Jugador();
        //jugador2.setNom("Claudia");
        
        System.out.println(jugador1);
        System.out.println(jugador2);
        
         System.out.println(jugador1.tirarDau());
         System.out.println(jugador1.onEs());
         System.out.println(jugador1.tirarDau());
         System.out.println(jugador1.onEs());
         System.out.println(taulell.getCasella(jugador1.getCasella()));
         
         

        
    }
    
}
