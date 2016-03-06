/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;

/**
 *
 * @author usuario
 */
import java.util.ArrayList;
import java.util.List;

public class  Partida {
	private Taulell board = new Taulell();
	public List<Jugador> jugadores;//important farem que els jugadros que anem entrant es vagin guardant 
	private int dado;
	private int impuesto = 0;
        
	public Partida() {
        }
	public List<Jugador> getJugadores() {
		return jugadores;
	}

	public void setJugadores(List<Jugador> jugadores) {
		this.jugadores = jugadores;
	}

	public int getDado() {
		return dado;
	}

	public void setDado(int dado) {
		this.dado = dado;
	}

	public int getImpuesto() {
		return impuesto;
	}

	public void setImpuesto(int impuesto) {
            if(impuesto==0){
                this.impuesto = impuesto;
            }else{
		this.impuesto += impuesto;
            }
	}
        public Taulell getBoard() {
        return board;
        }

        public void setBoard(Taulell board) {
            this.board = board;
        }
    
        
}
