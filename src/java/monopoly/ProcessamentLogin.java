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

   boolean bfirst = true;
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    HttpSession session = request.getSession(false); //creem una sessio per tal de pasar els parametres necessaris
    if(bfirst && session != null){
        session.invalidate();
        bfirst = false;
        session = request.getSession(true);
    }
    String nJugadors = request.getParameter("nJugadors");//obtenim de la request el nombre de jugadors del formulari del jsp
    String jugar = request.getParameter("jugar");//obtenim de la reguest els valors del nom del jugador y els colors del formulari
        if(jugar!=null&& "Jugar".equals(jugar)){//equals para compara dos strings en java(si hem fet click a jugar)
            int nj = Integer.parseInt(session.getAttribute("nJugadors").toString());//obtenim el maxim de jugadors 
            List<Jugador> jugadores = new ArrayList<>();//declarem un array list on guardarem els jugadors
            
            for(int i = 1; i<=nj;i++){
                String nomJ = request.getParameter("nJ"+i);//guardem el valor del nom del jugador (en jsp la id del nom es nJ mes la i)
                String colJ = request.getParameter("col"+i);//el mateix amb el color
                Jugador j=new Jugador(nomJ,colJ);//creem els objectes jugador
                jugadores.add(j);//afegim el jugador creat a la list de la clase partida per tal de tenir el jugadors de la partida               
            }
            
            session.setAttribute("newGame",true);//guardem a la sessió que fem un new game
            session.setAttribute("jugadores",jugadores);//guardem a la sessio el arraylist amb els objectes de jugador
            
            RequestDispatcher rd=request.getRequestDispatcher("view.jsp"); //anem a al tablero 
            rd.forward(request, response);
            
        }else{
            session.setAttribute("nJugadors",nJugadors);//nomes comprovem el nombre de jugadors per tal de que ens surtin els textfields pertinents
            //String token = request.getParameter("token");
            System.out.println(nJugadors);
            //System.out.println(token);
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");//ens envia al index
                rd.forward(request, response);
        }
    }

  
}