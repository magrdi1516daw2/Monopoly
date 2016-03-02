/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author usuario
 */
@WebServlet(name = "MonopoliServlet", urlPatterns = {"/MonopoliServlet"})
public class MonopoliServlet extends HttpServlet {


       private static final long serialVersionUID = 1L;
	private static String PLAY  = "game.jsp";
	private static String RESET = "index.jsp";
        int numberOfPlayers;
        //boolean podertirar=true;
        //boolean hastirado=false;
        //int ronda=0;
    /**
     * Default constructor. 
     */
    public MonopoliServlet() {
        // TODO Auto-generated constructor stub user.properties.file=/home/dgs/.netbeans/8.1/build.properties
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	private void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
                
                String forward= PLAY;
		boolean newGame = Boolean.parseBoolean(request.getParameter("newGame"));
          
                String tirar=String.valueOf(request.getParameter("tirar"));
                String comprar=request.getParameter("comprar");
                String pasar=request.getParameter("pasar");
                
		Game game = (Game)request.getSession().getAttribute("game");
                
		
		if(newGame) {
                        //game.ronda=0;
                        numberOfPlayers = Integer.parseInt(request.getParameter("numberOfPlayers"));
			try {
				game = new Game(numberOfPlayers);
			} catch (IllegalArgumentException e) {
				request.setAttribute("message", e.getMessage());
				forward = RESET;			
			}
			
			request.getSession().setAttribute("game", game);
		} 
		else {
                    if("Tirar".equals(tirar) && game.isPodertirar()==true){
                        game.setPodertirar(false);
                        game.setHastirado(true);
                        game.playRound(game.getRonda(), game.getTurno(), game, numberOfPlayers);
                    }
                    if("Comprar".equals(comprar) && game.isHastirado()==true){
                        game.setPodertirar(true);
                        game.setHastirado(false);
                        game.comprar(game.getRonda(), game.getTurno());
                        if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }                        
                    }
                    
                    if("Pasar".equals(pasar) && game.isHastirado()==true){
                        game.setPodertirar(true);
                        game.setHastirado(false);
                        if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }                        
                    }
		}
		
		request.getRequestDispatcher(forward).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
