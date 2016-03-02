package monopoly;

import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author marta
 */
@WebServlet(urlPatterns = {"/jugar"})
public class Controller extends HttpServlet {
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String ruta = "/view.jsp";    
        
        Taulell taulell = new Taulell();
        
        ArrayList<Jugador> jugadors = new ArrayList<>();
        jugadors.add(new Jugador("Marta"));
        jugadors.add(new Jugador("Oriol"));

       
      /*   System.out.println(jugador1);
        System.out.println(jugador2);
        
         System.out.println(jugador1.tirarDau());
         System.out.println(jugador1.onEs());
         System.out.println(jugador1.tirarDau());
         System.out.println(jugador1.onEs());
         System.out.println(taulell.getCasella(jugador1.getCasella()));*/
         
        HttpSession session = req.getSession();
        session.setAttribute("jugador",jugadors);
      /*Persona p = new Persona();
        
    p.setNom(req.getParameter("nom"));
    p.setEdat((parseInt(req.getParameter("edat"))));
    p.setCiutat(req.getParameter("ciutat"));
    //if (p.getNom().equals("")) ruta = "/error.jsp";
    req.setAttribute("persona",p);*/
    RequestDispatcher rd=req.getRequestDispatcher(ruta);
    rd.forward(req,resp);

    }

}
