<%-- 
    Document   : view
    Created on : 01/02/2016, 17:57:58
    Author     : marta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        
    <style>
        body {
            width: 99%;
            //height: 100%;
        }
        
        table.content {
            //text-align: center;
        }
        

        header {
            text-align: center;
        }
        
        #tauler {
            //width: 800px;
            //height: 800px;
            font-family: serif;
            font-size: 10px;
            text-align: center;
            //border-collapse: collapse;
            border-style: solid;
            border-width: 5px;
            
        }
        

        
        td.vernom {
           width: 102px;;
           height: 42px;
           padding: 0;
           margin: 0;
           //overflow: hidden;
           
        }
        
        td.vercolor {
           width: 5%;
        }
        
        td.hornom {
           width: 42px;
           height: 102px;
           
        }
        
        td.horcolor {
            height: 35px;;
        }       
        
        td.interiors {
            border-color: transparent;
        }
        

        
        
        </style>
    </head>
    <body> <table class="content">
        <tr> 
            <td colspan="3">    
                <header>
                <h2>pMonopoly!</h2>
                </header>
            </td>
        </tr>
        
        <tr>
            <td> Columna lateral esquerra </br>
            <jsp:useBean id="jugador1" class="monopoly.Jugador"/>
             <jsp:getProperty name="jugador1" property="nom" />
             Hola ${jugador1.nom} !
        
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
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
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
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
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
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
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
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
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
                        <td bgcolor='#99ccff'class="horcolor">Carrer Urgell</td>
                        <td class="horcolor">Sort</td>
                        <td bgcolor='#99ccff' class="horcolor">Carrer Girona</td>
                        <td class="horcolor">Ferrocarrils catalans</td> 
                        <td class="horcolor">Impostos</td>
                        <td bgcolor='#660066' class="horcolor">Carrer Roselló</td>
                        <td class="horcolor">comunitat</td>
                        <td bgcolor='#660066' class="horcolor">Carrer d'Avinyo</td>
                        <td colspan='2' rowspan="2">SORTIDA</td>
                    </tr>
                    <tr>
                        <td class="hornom">Carrer cian3</td>
                        <td class="hornom">Carrer cian2</td>
                        <td class="hornom"><img class="Himg" src="images/Hsort.png" alt=""  ></td>
                        <td class="hornom">Carrer cian1</td>
                        <td class="hornom"><img class="Himg" src="images/tren.png" alt=""  ></td> 
                        <td class="hornom"><img src="images/impostos.png" alt=""  ></td>
                        <td class="hornom">Carrer lila2</td>
                        <td class="hornom"><img src="images/chest.jpg" alt=""  ></td>
                        <td class="hornom">Carrer lila2</td>
                    </tr>
                </table> <!-- tancament de la taula que fomra el tauler-->
            
            </td><!-- tancament cel·la del tauler-->
        
        <td> Columna lateral dreta</td>
        
        </tr> <!-- tancament fila del tauler-->
         
        <tr>  <!-- footer -->
            <td colspan="3">    
                <footer>
                peu de pàgina
                </footer>
            </td>
        </tr>
        
    </table>  </body> <!-- tancament taula de continguts-->
</html>
