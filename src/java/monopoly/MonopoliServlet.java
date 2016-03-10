/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/*
import beans.Casilla;
import beans.CasillaNormal;
import beans.Dice;
import beans.Jugador;
import beans.Partida;
import utils.MonopoliUtils;
*/
/**
 * Servlet implementation class GameController
 */
@WebServlet(name = "MonopoliServlet", urlPatterns = { "/MonopoliServlet" })
public class MonopoliServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

        
        Partida p = new Partida();//creem el objecte partida
        int i=0;//inicialitzem la i que ens indicara la id del jugador que ha de tirar 
        int maxJug=0;//sera el nombre de jugadors que jugaran a la partida en qüestio
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();//obtenim la sesio previament creada
		response.getWriter().append("Served at:").append(request.getContextPath());
                maxJug=Integer.parseInt(session.getAttribute("nJugadors").toString());//mirem el nombre de jugadors de la sesio
		String action = "";
		String ruta = "view.jsp";//setejem la ruta
                /**/
                
		// depenent de la accio que enviem per la request farem una cosa o la altre
		if (request.getParameter("start") != null) {
			action = "start";
		} else if (request.getParameter("jugar") != null) {
			action = "jugar";
		} else if (request.getParameter("tirar") != null) {
			action = "tirar";
		} else if (request.getParameter("passar") != null) {
			action = "passar";
		} else if (request.getParameter("comprar") != null) {
			action = "comprar";
		} else if (request.getParameter("edificar") != null) {
			action = "edificar";
		} else {

		}

		// Enviamos al metodo correspondiente seguin la accion a realizar
		switch (action) {
                    case "start"://si començem
                        i=0;
                        List<Jugador> j = (List) session.getAttribute("jugadores");//obtenim la llista de la sesio
                        p.setJugadores(j);//ara li donem al objecte partida que hem creat la llista de jugadors
                        System.out.println(p.getJugadores());//Aqui els veiem per consola
                        session.setAttribute("newGame",false); //aqui lo pasamos a false para que se muestre el tablero
                        session.setAttribute("partida", p);//Guardem la partida en la sesio
                        session.setAttribute("JugadorActual", p.getJugadores().get(i).getNom());//Settejem el jugador actual
                        session.setAttribute("bTirar", true);//setejem el atribut tirar per veure si podem tirar
                        break;
		case "passar":
			i=(i+1)%maxJug;//sumem un per pasar el torn el max jugadors fara que la suma quan arribi al nombre de max jugadors torni a zero
                        session.setAttribute("partida", p);//Guardem un altre cop la partida a la sesio per guardar els canvis fets
                        session.setAttribute("JugadorActual", p.getJugadores().get(i).getNom());//guardem el jugador actual
                        session.setAttribute("bTirar", true);// i b tirar a true per que el boto passar canvi a tirar
			int dinersJugador=p.getJugadores().get(i).getDiners();
                            if(dinersJugador<=0){
                            p.getJugadores().remove(i);

                            }
                        break;
		case "jugar":
			//goToPlayers(request);
			break;
		case "tirar":
                        session.setAttribute("bTirar", false);//pasem el tirar a false per que es mostri el boto passar en comptes de tirar
                        int casella = p.getJugadores().get(i).getCasella();
			tiraDau(session,casella);//anem a la funcio tirar dau pasant-li la sessio 
                        comprovaCasella(session);
 
			break;
		case "comprar":
			comprarCasella(session);
			break;
		case "edificar":
			//goToBuild(request);
			break;
		default:
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(ruta);
		rd.forward(request, response);
                
                
	}
        
        private void tiraDau(HttpSession session,int casella){
            Random r = new Random();// creem un nombre random
            int Result = r.nextInt(6-1)+1;//6-1 ens indica que el maxim serà 6 i el minim 1
            session.setAttribute("dau",Result);//Guardem el resultat del dau en una sessio
            p.getJugadores().get(i).setCasella(Result);//de la llista de jugadors obtenim el jugador que ha tirar i li sumem la casella a la clase casella
            System.out.println( p.getJugadores().get(i).getCasella());//printem el nombre de casella on es troba
            session.setAttribute("casellaActual",p.getJugadores().get(i).getCasella());//guardem la casella actual en una sesio per veure posteriorment si es pot comprar aquesta casella o no
            //aixo vol dir que ha passat per la sortida
            if(p.getJugadores().get(i).getCasella() < casella){
                p.getJugadores().get(i).setDiners(p.getJugadores().get(i).getDiners()+20000);//afegim 20.000 euros per passar per la sortida
            }
        }
        
        private void comprovaCasella(HttpSession session){
            //session.setAttribute("caselles",p.getBoard().getCaselles());
            int dinero;
            List<Casella> c = (List) session.getAttribute("caselles");     
            System.out.println(p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).getPropietari());//extreu informacio de la casella actual
            session.setAttribute("propietariActual",p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).getPropietari());
            int numCase=(int)session.getAttribute("casellaActual");
            //si estem a una casella de impost!
            if(session.getAttribute("propietariActual")==null && (numCase==2 || numCase==4 || numCase==17 || numCase==38 || numCase==33)){             
               System.out.println("Siiiiii!!");
                switch(numCase){
                    case 2:
                        dinero =p.getJugadores().get(i).getDiners()-300;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(300);

                    break;
                    case 4:
                        dinero =p.getJugadores().get(i).getDiners()-400;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(400);

                    break;
                    case 12: //llum
                        dinero =p.getJugadores().get(i).getDiners()-600;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(600);

                    break;
                    case 17:
                        dinero =p.getJugadores().get(i).getDiners()-600;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(600);

                    break;
                    case 28:
                        dinero =p.getJugadores().get(i).getDiners()-600;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(600);

                    break;
                    case 38:
                        dinero =p.getJugadores().get(i).getDiners()-800;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(700);

                    break;
                    case 33:
                        dinero =p.getJugadores().get(i).getDiners()-700;
                        p.getJugadores().get(i).setDiners(dinero);
                        p.setImpuesto(800);
                    break;
                    


                }    
            }
            //Suerte
            if(session.getAttribute("propietariActual")==null && (numCase==7 || numCase==22 || numCase==36)){             
               System.out.println("Siiiiii!!");
                switch(numCase){
                    case 7:
                        dinero =p.getJugadores().get(i).getDiners()+300;
                        p.getJugadores().get(i).setDiners(dinero);
                        //p.setImpuesto(300);

                    break;
                    case 22:
                        dinero =p.getJugadores().get(i).getDiners()+400;
                        p.getJugadores().get(i).setDiners(dinero);
                        //p.setImpuesto(400);

                    break;
                    case 36:
                        dinero =p.getJugadores().get(i).getDiners()+600;
                        p.getJugadores().get(i).setDiners(dinero);
                        //p.setImpuesto(600);

                    break;
                }    
            }
            
            //parking
            if(session.getAttribute("propietariActual")!=null && (numCase==20)){
                dinero =p.getJugadores().get(i).getDiners()+p.getImpuesto();
                p.getJugadores().get(i).setDiners(dinero);
                p.setImpuesto(0);
            }
            
            
            //caure en un altre cassella d'un altre propietari
            if(session.getAttribute("propietariActual")!=null && !(session.getAttribute("propietariActual").equals(p.getJugadores().get(i).getNom())) ){
            dinero =p.getJugadores().get(i).getDiners()-200;
             p.getJugadores().get(i).setDiners(dinero);
             for(int o=0;o < maxJug;o++){
                 if(session.getAttribute("propietariActual").equals(p.getJugadores().get(o).getNom())){
                    dinero=p.getJugadores().get(i).getDiners()+200;
                    p.getJugadores().get(o).setDiners(dinero);
                 }
             
             }
                
            }
            
        }
       private void comprarCasella(HttpSession session){
            p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).setPropietari(p.getJugadores().get(i).getNom());
            
            System.out.println(p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).getPropietari());
            
            session.setAttribute("propietariActual",p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).getPropietari());
            session.setAttribute("propietaris",p.getBoard().getCaselles());
            
            int preuCasella=p.getBoard().getCaselles().get((int) session.getAttribute("casellaActual")).getPreu();
            int dinersJugador=p.getJugadores().get(i).getDiners();
            dinersJugador -= preuCasella;
            p.getJugadores().get(i).setDiners(dinersJugador);
            
       }
        


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}