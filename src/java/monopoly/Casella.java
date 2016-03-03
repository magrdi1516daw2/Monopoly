/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;

/**
 *
 * @author marta
 */
public class Casella {
    private int id;
    private String nom;
    private int preu;
    private String propietari;

    public Casella(int id, String nom, int preu) {
        this.id = id;
        this.nom = nom;
        this.preu = preu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getPreu() {
        return preu;
    }

    public void setPreu(int preu) {
        this.preu = preu;
    }

    public String getPropietari() {
        return propietari;
    }

    public void setPropietari(String propietari) {
        this.propietari = propietari;
    }

    @Override
    public String toString() {
        return "Casella{" + "id=" + id + ", nom=" + nom + ", preu=" + preu + ", propietari=" + propietari + '}';
    }
    
    
}
