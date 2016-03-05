/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monopoly;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 *aqui donarem d'alta als jugadors i els anirem guardan en una llista
 * @author ormeco
 */
@WebServlet(name = "ProcessamentLogin", urlPatterns = {"/ProcessamentLogin"})
public class ProcessamentLogin extends HttpServlet {

   
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession(true); 
    String nJugadors = request.getParameter("nJugadors");
    String jugar = request.getParameter("jugar");
        if(jugar!=null&& "Jugar".equals(jugar)){//equals para compara dos strings en java
            int nj = Integer.parseInt(session.getAttribute("nJugadors").toString());
            List<Jugador> jugadores = new ArrayList<>();
            
            for(int i = 1; i<=nj;i++){
                String nomJ = request.getParameter("nJ"+i);
                String colJ = request.getParameter("col"+i);
                Jugador j=new Jugador(nomJ,colJ);//creem els objectes jugador
                jugadores.add(j);//afegim el jugador creat a la list de la clase partida per tal de tenir el jugadors de la partida               
            }
            
            session.setAttribute("newGame",true);
            session.setAttribute("jugadores",jugadores);
            
            RequestDispatcher rd=request.getRequestDispatcher("view.jsp");  
            rd.forward(request, response);
            
        }else{
            session.setAttribute("nJugadors",nJugadors);
            //String token = request.getParameter("token");
            System.out.println(nJugadors);
            //System.out.println(token);
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
        }
    }

  
}