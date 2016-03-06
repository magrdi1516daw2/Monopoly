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
        Casella casella8 = new Casella(8,"Carrer Urgell",10100);
        caselles.add(casella8);
        Casella casella9 = new Casella(9,"Consell de Cent",11000);
        caselles.add(casella9);
        Casella casella10 = new Casella(10,"Preso",0);
        caselles.add(casella10);
        Casella casella11 = new Casella(11,"Carrer Muntaner",12000);
        caselles.add(casella11);
        Casella casella12 = new Casella(12,"Distribució Electrica",20000);
        caselles.add(casella12);
        Casella casella13 = new Casella(13,"Carrer Aribau",12500);
        caselles.add(casella13);
        Casella casella14 = new Casella(14,"Av. Infanta Carlota",12750);
        caselles.add(casella14);
        Casella casella15 = new Casella(15,"Estació de França",20000);
        caselles.add(casella15);
        Casella casella16 = new Casella(16,"Paseig de Sant Joan",13000);
        caselles.add(casella16);
        Casella casella17 = new Casella(17,"Impost",20000);
        caselles.add(casella17);
        Casella casella18 = new Casella(18,"Carrer diputació",13500);
        caselles.add(casella18);
        Casella casella19 = new Casella(19,"Carrer Aragó",13700);
        caselles.add(casella19);
        Casella casella20 = new Casella(20,"Parking",0);
        caselles.add(casella20);
        Casella casella21 = new Casella(21,"Pl. Urquinaona",14000);
        caselles.add(casella21);
        Casella casella22 = new Casella(22,"Sort",0);
        caselles.add(casella22);
        Casella casella23 = new Casella(23,"Carrer Fontanella",14500);
        caselles.add(casella23);
        Casella casella24 = new Casella(24,"Ronda Sant Pere",14750);
        caselles.add(casella24);
        Casella casella25 = new Casella(25,"Estació de metro",20000);
        caselles.add(casella25);
        Casella casella26 = new Casella(26,"Rambles",15000);
        caselles.add(casella26);
        Casella casella27 = new Casella(27,"Via Laietana",15550);
        caselles.add(casella27);
        Casella casella28 = new Casella(28,"Aigues de Barcelona",20000);
        caselles.add(casella28);
        Casella casella29 = new Casella(29,"Pl. Catalunya",16000);
        caselles.add(casella29);
        Casella casella30 = new Casella(30,"Preso",0);
        caselles.add(casella30);
         Casella casella31 = new Casella(31,"Portal del Angel",16500);
        caselles.add(casella31);
         Casella casella32 = new Casella(32,"Carrer Pelayo",16700);
        caselles.add(casella32);
         Casella casella33 = new Casella(33,"Caixa de a comunitat",0);
        caselles.add(casella33);
         Casella casella34 = new Casella(34,"Via Augusta",17000);
        caselles.add(casella34);
        Casella casella35 = new Casella(35,"Estació del nort",20000);
        caselles.add(casella35);
         Casella casella36 = new Casella(36,"Sort",0);
        caselles.add(casella36);
         Casella casella37 = new Casella(37,"Carrer Balmes",17500);
        caselles.add(casella37);
         Casella casella38 = new Casella(38,"Tasa de luxe",20000);
        caselles.add(casella38);
         Casella casella39 = new Casella(39,"Paseig de gracia",21000);
        caselles.add(casella39);
    }

    public ArrayList<Casella> getCaselles() {
        return caselles;
    }
    
    public Casella getCasella(int num){
        return caselles.get(num);
    }
            /*cobrar(casella.getPreu())*/
    
    
}
