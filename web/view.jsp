<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body> 
        <c:choose>
            <c:when test="${newGame}">
                <form action="MonopoliServlet" method="get">
                    <input type="submit" value="Start" name="start">
                </form>
            </c:when>
            <c:otherwise>
        <table class="content">
        
        <tr>
            <td class="laterals"> 
                <c:forEach  var='jugador' items='${jugadores}' >
                   ${jugador.toString()}
                </c:forEach>
                
                <!-- Per controlar les posicions mentre no tenim les fitxes implementades -->
                <c:forEach  var='jugador' items='${jugadores}' >
                   ${jugador.onEs()}
                </c:forEach>
                
            </td>
            
            <td>  
                <table  id='tauler' border='1' >
                    <tr>
                        <td colspan='2' rowspan="2">PARKING</td><!--casella 20 -->
                        <td class="hornom"></td> <!--casella 21 -->
                        <td class="hornom"><img src="images/Hsort.png" alt=""  ></td> <!--casella 22 -->
                        <td class="hornom"></td> <!--casella 23 -->
                        <td class="hornom"></td>
                        <td class="hornom"><img src="images/tren.png" alt=""  ></td> <!--casella 24 -->
                        <td class="hornom"></td> <!--casella 25 -->
                        <td class="hornom"></td> <!--casella 26 -->
                        <td class="hornom"><img src="images/aigua.png" alt=""  ></td> <!--casella 27 -->
                        <td class="hornom"></td> <!--casella 28 -->
                        <td colspan='2' rowspan="2">PRESÓ</td> <!--casella 29 -->
                    </tr>
                    <tr>
                        <td bgcolor='red' class="horcolor">Pl. Urquinaona</td>
                        <td class="horcolor">Sort</td>
                        <td bgcolor='red' class="horcolor">Carrer Fontanella</td>
                        <td bgcolor='red' class="horcolor">Ronda Sant Pere</td>
                        <td class="horcolor">Estació de metro</td> 
                        <td bgcolor='yellow' class="horcolor">Rambles</td>
                        <td bgcolor='yellow' class="horcolor">Via Laietana</td>
                        <td class="horcolor">Aigues de Barcelona</td>
                        <td bgcolor='yellow' class="horcolor">Pl. Catalunya</td>
                    </tr>

                    <tr>
                        <td class="vernom"></td><!--casella 19 -->
                        <td bgcolor='orange' class="vercolor">Carrer Aragó</td>
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td  bgcolor='green' class="vercolor">Portal del Angel</td><!--casella 31 -->
                        <td class="vernom"></td> 
                    </tr>

                    <tr>
                        <td></td> <!--casella 18 -->
                        <td bgcolor='orange'>Carrer diputació</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='green' class="vercolor">Carrer Pelayo</td>
                        <td class="vernom"></td> <!--casella 32 -->
                    </tr>

                    <tr>
                        <td class="vernom"><img src="images/chest.jpg" alt=""  ></td><!--casella 17 -->
                        <td class="vercolor">Impost</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors' colspan='3'>
                            <div>
                                Torn del jugador:
                                ${JugadorActual}
                            </div>
                        </td> 
                       <!--<td class='interiors'></td>  
                        <td class='interiors'></td> -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class="vercolor">Impost</td>
                        <td class="vernom"><img src="images/chest.jpg" alt=""  ></td> <!--casella 33 -->
                    </tr>

                    <tr>
                        <td class="vernom"></td> <!--casella 16 -->
                        <td bgcolor='orange' class="vercolor">Paseig de Sant Joan</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td  colspan='3' rowspan="4">
                            <div id="contentDau">
                                <c:if test="${dau!=null}">
                                    <img src="images/d${dau}.png"/>
                                </c:if>
                                
                                <form action="MonopoliServlet" method="post">
                                    <c:if test="${bTirar==true}">
                                        <input type="submit" value="Tirar" name="tirar">
                                    </c:if>
                                    
                                    <c:if test="${bTirar==false}">
                                        <input type="submit" value="Passar" name="passar">
                                    </c:if>
                                </form>
                            </div>
                        </td>  
                       <!-- <td class='interiors'>aqui</td> 
                        <td class='interiors'>aqui</td>  -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='green' class="vercolor">Via Augusta</td>
                        <td class="vernom"></td>     <!--casella 34 -->           
                    </tr>

                    <tr>
                        <td class="vernom"><img src="images/tren.png" alt=""></td> <!--casella 15 -->
                        <td class="vercolor">Estació de França</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <!-- <td class='interiors'>aqui</td> 
                        <td class='interiors'>aqui</td>  
                        <td class='interiors'>aqui</td>  -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class="vercolor">Estació del nort</td>
                        <td class="vernom"><img  src="images/tren.png" alt=""  ></td>  <!--casella 35 -->              
                    </tr>

                    <tr>
                        <td class="vernom"></td> <!--casella 14-->
                        <td bgcolor='#cc0066' class="vercolor">Av.Infanta Carlota</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <!--<td class='interiors'>aqui</td> 
                        <td class='interiors'>aqui</td>  
                        <td class='interiors'>aqui</td> -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class="vercolor">Sort</td>
                        <td class="vernom"><img  src="images/Vsort.png" alt=""  ></td>  <!--casella 36 -->              
                    </tr>

                    <tr>
                        <td class="vernom"></td> <!--casella 13-->
                        <td bgcolor='#cc0066' class="vercolor">Carrer Aribau</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td bgcolor='blue' class="vercolor">Carrer Balmes</td>
                        <td class="vernom"></td>      <!--casella 37 -->           
                    </tr>

                    <tr>
                        <td class="vernom"><img src="images/bombeta.png" alt=""></td><!--casella 12-->
                        <td class="vercolor">Llum</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class="vercolor">Impost de Luxe</td>
                        <td class="vernom"><img src="images/impostos.png" alt=""  ></td>  <!--casella 38 -->              
                    </tr>

                    <tr>
                        <td class="vernom"></td><!--casella 11-->
                        <td bgcolor='#cc0066' class="vercolor">Carrer Muntaner</td>
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td bgcolor='blue' class="vercolor">Paseig de gracia</td>
                        <td class="vernom"></td>        <!--casella 39 -->        
                    </tr>

                    <tr>
                        <td colspan='2' rowspan="2">VISITANT LA PRESÓ</td>
                        <td bgcolor='#99ccff' class="horcolor">Consell de Cent</td>
                        <td bgcolor='#99ccff' class="horcolor">Carrer Urgell</td>
                        <td class="horcolor">Sort</td>
                        <td bgcolor='#99ccff' class="horcolor">Carrer Girona</td>
                        <td class="horcolor">Ferrocarrils catalans</td> 
                        <td class="horcolor">Impostos</td>
                        <td bgcolor='#660066' class="horcolor">Carrer Roselló</td>
                        <td class="horcolor">comunitat</td>
                        <td bgcolor='#660066' class="horcolor">Carrer d'Avinyo</td>
                        <td id="0" colspan='2' rowspan="2">SORTIDA</td>
                    </tr>
                    <tr>
                        <td id="9" class="hornom">Carrer cian3</td>
                        <td id="8" class="hornom">Carrer cian2</td>
                        <td id="7" class="hornom"><img class="Himg" src="images/Hsort.png" alt=""  ></td>
                        <td id="6" class="hornom">Carrer cian1</td>
                        <td id="5" class="hornom"><img class="Himg" src="images/tren.png" alt=""  ></td> 
                        <td id="4" class="hornom"><img src="images/impostos.png" alt=""  ></td>
                        <td id="3" class="hornom">Carrer lila2</td>
                        <td id="2" class="hornom"><img src="images/chest.jpg" alt=""  ></td>
                        <td id="1" class="hornom">Carrer lila2</td>
                    </tr>
                </table> <!-- tancament de la taula que fomra el tauler-->
            
            </td><!-- tancament cel·la del tauler-->
        
            <td class="laterals"> 
                dreta
            </td>
        
        </tr> <!-- tancament fila del tauler-->
         
        <tr>  <!-- footer -->
            <td colspan="3">    
                <footer>
                peu de pàgina
                </footer>
            </td>
        </tr>
        
    </table>  
        </c:otherwise>
        </c:choose>
</body> <!-- tancament taula de continguts-->
</html>
