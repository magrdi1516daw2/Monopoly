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
            
            
            <td>  
                <table  id='tauler' border='1' >
                    <tr>
                        <td bgcolor='white' colspan='2' rowspan="2"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 20}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            PARKING</br><small>Gratis!</small>
                        </td><!--casella 20 -->
                        
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 21}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>14000e</small>
                        </td> <!--casella 21 -->
                        
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 22}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/Hsort.png" alt=""  >
                        </td> <!--casella 22 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 23}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>14500e</small>
                        </td> <!--casella 23 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 24}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>14750e</small>
                        </td><!--casella 24-->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 25}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/tren.png" alt=""  >
                            <small>20000e</small>
                        </td> <!--casella 25 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 26}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>15000e</small>                        
                        </td> <!--casella 26 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 27}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>15500e</small>
                        </td> <!--casella 27 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 28}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/aigua.png" alt=""  >
                            <small>600e</small>
                        </td> <!--casella 28 -->
                        <td class="hornom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 29}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>16000e</small>
                        </td> <!--casella 29 -->
                        <td bgcolor='white' colspan='2' rowspan="2"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 30}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            PRESÓ
                        </td> <!--casella 29 -->
                    </tr>
                    <tr>
                        <td bgcolor='red' class="horcolor">Pl. Urquinaona</td>
                        <td bgcolor='white' class="horcolor">Sort</td>
                        <td bgcolor='red' class="horcolor">Carrer Fontanella</td>
                        <td bgcolor='red' class="horcolor">Ronda Sant Pere</td>
                        <td bgcolor='white'class="horcolor">Estació de metro</td> 
                        <td bgcolor='yellow' class="horcolor">Rambles</td>
                        <td bgcolor='yellow' class="horcolor">Via Laietana</td>
                        <td bgcolor='white'class="horcolor">Aigues de Barcelona</td>
                        <td bgcolor='yellow' class="horcolor">Pl. Catalunya</td>
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 19}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>13700e</small>
                        </td><!--casella 19 -->
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
                        <td bgcolor='green' class="vercolor">Portal del Angel</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 31}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>20000e</small>
                        </td><!--casella 31 --> 
                    </tr>

                    <tr>
                        <td bgcolor='white'><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 18}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>13500e</small>
                        </td> <!--casella 18 -->
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
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 32}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>16700e</small>
                        </td> <!--casella 32 -->
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 17}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/chest.jpg" alt=""  >
                        </td><!--casella 17 -->
                        <td bgcolor='white'class="vercolor">Impost</td> 
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
                        <td bgcolor='white' class="vercolor">Impost</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 33}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/chest.jpg" alt=""  >
                        </td> <!--casella 33 -->
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 16}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>13000e</small>
                        </td> <!--casella 16 -->
                        <td bgcolor='orange' class="vercolor">Paseig de Sant Joan</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td  bgcolor='#414141'colspan='3' rowspan="4">
                            <div id="contentDau">
                                <c:if test="${dau!=null}">
                                    <img src="images/d${dau}.png"/>
                                </c:if>
                                
                                <form action="MonopoliServlet" method="post">
                                    <c:if test="${bTirar==true}">
                                        <input type="submit" value="Tirar" name="tirar">
                                    </c:if>
                                    
                                    <c:if test="${bTirar==false}">
                                        <c:if test="${propietariActual==null && (casellaActual != 0 && casellaActual != 2 && casellaActual != 4 && casellaActual != 7 && casellaActual != 10 && casellaActual != 17 && casellaActual != 20 && casellaActual != 30 && casellaActual != 33 && casellaActual != 36 && casellaActual != 38) }">
                                            <input type="submit" value="Comprar" name="comprar">
                                        </c:if>
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
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 34}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;   height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>17000e</small>
                        </td>     <!--casella 34 -->           
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 15}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;   height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/tren.png" alt="">
                                <small>20000e</small>
                        </td> <!--casella 15 -->
                        <td bgcolor='white' class="vercolor">Estació de França</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <!-- <td class='interiors'>aqui</td> 
                        <td class='interiors'>aqui</td>  
                        <td class='interiors'>aqui</td>  -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='white' class="vercolor">Estació del nort</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 35}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img  src="images/tren.png" alt=""  >
                        <small>20000e</small></td>  <!--casella 35 -->              
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 14}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>12750e</small>
                        </td> <!--casella 14-->
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
                        <td bgcolor='white' class="vercolor">Sort</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 36}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img  src="images/Vsort.png" alt=""  ></td>  <!--casella 36 -->              
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 13}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>12500e</small>
                        </td> <!--casella 13-->
                        <td bgcolor='#cc0066' class="vercolor">Carrer Aribau</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td bgcolor='blue' class="vercolor">Carrer Balmes</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 37}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>17500e</small>
                        </td>      <!--casella 37 -->           
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 12}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <img src="images/bombeta.png" alt=""></br> 
                            <small>600e</small>
                        </td><!--casella 12-->
                        <td bgcolor='white' class="vercolor">Llum</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors' colspan="5">
                           <c:forEach items="${partida.jugadores}" var="jugador">
                                <c:if test="${jugador.casella == 2}">
                                   <h2>${jugador.nom}, estas a la casella d'impostos a la comunitat(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 300e!</h2> 
                                </c:if>
                                   
                                <c:if test="${jugador.casella == 4}">
                                   <h2>${jugador.nom}, estas a la casella d'impostos d'IRPF(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 400e!</h2> 
                                </c:if>
                                   
                                <c:if test="${jugador.casella == 7}">
                                    <h2>${jugador.nom}, estas a la casella sort(<c:out value="${jugador.casella}"/>). </br> Felicitats has guanyat 300e!</h2> 
                                </c:if>
     
                                <c:if test="${jugador.casella == 12}">
                                    <h2>${jugador.nom}, estas a la casella del rebut de la llum(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 600e</h2> 
                                </c:if>
                                    
                                <c:if test="${jugador.casella == 17}">
                                   <h2>Has caigut a la casella d'impostos a la comunitat(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 600e!</h2> 
                                </c:if>

                                <c:if test="${jugador.casella == 22}">
                                   <h2>${jugador.nom}, estas a la casella del rebut de l'aigua(<c:out value="${jugador.casella}"/>).</br>  Has de pagar un rebut de 600e!</h2> 
                                </c:if>
                                   
                                <c:if test="${jugador.casella == 28}">
                                   <h2>${jugador.nom}, estas a la casella sort(<c:out value="${jugador.casella}"/>).</br>  Felicitats has guanyat 400e!</h2> 
                                </c:if>
                                   
                                 <c:if test="${jugador.casella == 33}">
                                   <h2>${jugador.nom}, estas a la casella d'impostos a la comunitat(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 700e!</h2> 
                                </c:if>
                                   
                                <c:if test="${jugador.casella == 36}">
                                   <h2>${jugador.nom}, estas a la casella sort(<c:out value="${jugador.casella}"/>). </br> Felicitats has guanyat 600e!</h2> 
                                </c:if>
                                   
                                <c:if test="${jugador.casella == 38}">
                                   <h2>${jugador.nom}, estas a la casella d'impostos de luxe(<c:out value="${jugador.casella}"/>). </br> Has de pagar un rebut de 800e!</h2> 
                                </c:if>
                           </c:forEach>
                        </td>  
                        <!--<td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> -->
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='white' class="vercolor">Impost de Luxe</td>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 38}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach><img src="images/impostos.png" alt=""  ></br> 
                                <small>800e</small>
                        </td>  <!--casella 38 -->              
                    </tr>

                    <tr>
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 11}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>12000e</small>
                        </td><!--casella 11-->
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
                        <td class="vernom"><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 39}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>21000e</small>
                        </td>        <!--casella 39 -->        
                    </tr>

                    <tr>
                        <td bgcolor='white' colspan='2' rowspan="2"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 10}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            VISITANT LA PRESÓ</td><!--casella 10 -->  
                        <td bgcolor='#99ccff' class="horcolor">Consell de Cent</td>
                        <td bgcolor='#99ccff' class="horcolor">Carrer Urgell</td>
                        <td bgcolor='white' class="horcolor">Sort</td>
                        <td bgcolor='#99ccff' class="horcolor">Carrer Girona</td>
                        <td bgcolor='white' class="horcolor">Ferrocarrils catalans</td> 
                        <td bgcolor='white' class="horcolor">Impostos</td>
                        <td bgcolor='#660066' class="horcolor">Carrer Roselló</td>
                        <td bgcolor='white' class="horcolor">comunitat</td>
                        <td bgcolor='#660066' class="horcolor">Carrer d'Avinyo</td>
                        <td bgcolor='white' id="0" colspan='2' rowspan="2">
                            <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 0}">
						<div class="posicion" id="pos0" style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            
                            SORTIDA</td>
                    </tr>
                    <tr>
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 9}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>11000e</small>
                        </td><!--casella 9 -->  
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 8}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>10100e</small>
                        </td><!--casella 8 -->  
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 7}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <img class="Himg" src="images/Hsort.png" alt=""  >
                        </td><!--casella 7 -->  
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 6}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <small>10000e</small>
                        </td><!--casella 6 -->  
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 5}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <img class="Himg" src="images/tren.png" alt=""  >
                            <small>20000e</small>
                        </td> <!--casella 5 -->  
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 4}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <img src="images/impostos.png" alt=""  >
                        <small>400e</small>
                        </td><!--casella 4 -->  
                        <td id="3" class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 3}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                        <small>6000e</small>
                        </td><!--casella 3-->  
                        <td class="hornom"><img src="images/chest.jpg" alt=""  > 
                            <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 2}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px;  height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                            <!--casella 2 -->  
                        </td>
                        <td class="hornom"> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.casella == 1}">
						<div class="posicion"  style="background-color:${jugador.color}; width:25px; height:25px;  border-radius: 100%;">
							
						</div>
					</c:if>
				</c:forEach>
                        <small>6000e</small>
                        </td><!--casella 1 -->  
                    </tr>
                </table> <!-- tancament de la taula que fomra el tauler-->
            
            </td><!-- tancament cel·la del tauler-->
        
            <!-- <td class="laterals"> 
                
            </td>-->
        
        </tr> <!-- tancament fila del tauler-->
         
        <!--<tr>   footer 
            <td colspan="3">    
                <footer>
                peu de pàgina
                </footer>
            </td>
        </tr>-->
    </table>  
         <!-- tota la informacio dels jugadors -->                   
        <div class="contentJug">
            <c:forEach  var='jugador' items='${jugadores}' >
                <div class="infoJug">
                    
                    <div class="colorJug" ><div style="background-color: ${jugador.color};"></div></div>
                    
                    <div class="nomJug" ><b>Nom:</b> ${jugador.nom}</div>
                    
                    <div class="dinJug"><b>Diners:</b> ${jugador.diners} eur.</div>
                    
                    <div class="casellaJug">
                        <span style="padding-bottom:8px;font-weight: bold;">Propietats:</span>
                        
                        <c:forEach var='propietat' items='${propietaris}'>
                            <c:if test="${propietat.propietari == jugador.nom}">
                                <div>${propietat.id} - ${propietat.nom}</div>
                            </c:if>
                        </c:forEach>
                                
                    </div>
                </div>
            </c:forEach>
        </div>    
        </c:otherwise>
    </c:choose>
</body>
</html>
