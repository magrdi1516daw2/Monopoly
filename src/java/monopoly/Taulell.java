/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;

import java.util.ArrayList;
import monopoly.Casella;

/**
 *
 * @author marta
 */
public class Taulell {
    private ArrayList <Casella> caselles;

    public Taulell() {
        
        caselles = new ArrayList<Casella>();
        
        Casella casella0 = new Casella(0,"Sortida",0);
        caselles.add(casella0);
        Casella casella1 = new Casella(1,"Carrer d'Avinyo",6000);
        caselles.add(casella1);
        Casella casella2 = new Casella(2,"Caixa de la Comunitat",0);
        caselles.add(casella2);
        Casella casella3 = new Casella(3,"Carrer Roselló",6000);
        caselles.add(casella3);
        Casella casella4 = new Casella(4,"Impost sobre integraments",20000);
        caselles.add(casella4);
        Casella casella5 = new Casella(5,"Estació dels ferrocarrils catalans",20000);
        caselles.add(casella5);
        Casella casella6 = new Casella(6,"Carrer Girona",10000);
        caselles.add(casella6);
        Casella casella7 = new Casella(7,"Sort",0);
        caselles.add(casella7);
                                   
    }
    
    public Casella getCasella(int num){
        return caselles.get(num);
    }
            /*cobrar(casella.getPreu())*/
    
    
}
