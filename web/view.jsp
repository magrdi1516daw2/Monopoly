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
                        <td colspan='2' rowspan="2">PARKING</td>
                        <td class="hornom">Carrer vermell1</td>
                        <td class="hornom"><img   src="images/Hsort.png" alt=""  ></td>
                        <td class="hornom">Carrer vermell2</td>
                        <td class="hornom">Carrer vermell3</td>
                        <td class="hornom"><img src="images/tren.png" alt=""  ></td> 
                        <td class="hornom">Carrer Groc1</td>
                        <td class="hornom">Carrer Groc2</td>
                        <td class="hornom"><img src="images/aigua.png" alt=""  ></td>
                        <td class="hornom">Carrer Groc3</td>
                        <td colspan='2' rowspan="2">PRESÓ</td>
                    </tr>
                    <tr>
                        <td bgcolor='red' class="horcolor"></td>
                        <td class="horcolor">Sort</td>
                        <td bgcolor='red' class="horcolor"></td>
                        <td bgcolor='red' class="horcolor"></td>
                        <td class="horcolor">Estació</td> 
                        <td bgcolor='yellow' class="horcolor"></td>
                        <td bgcolor='yellow' class="horcolor"></td>
                        <td class="horcolor">Aigua</td>
                        <td bgcolor='yellow' class="horcolor"></td>
                    </tr>

                    <tr>
                        <td class="vernom">Carrer taronja3</td>
                        <td bgcolor='orange' class="vercolor"></td>
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td  bgcolor='green' class="vercolor"></td>
                        <td class="vernom">Carrer Verd3</td> 
                    </tr>

                    <tr>
                        <td>Carrer taronja2</td>
                        <td bgcolor='orange'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='green' class="vercolor"></td>
                        <td class="vernom">Carrer Verd2</td> 
                    </tr>

                    <tr>
                        <td class="vernom"><img src="images/chest.jpg" alt=""  ></td>
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
                        <td class="vernom"><img src="images/chest.jpg" alt=""  ></td> 
                    </tr>

                    <tr>
                        <td class="vernom">Carrer taronja1</td>
                        <td bgcolor='orange' class="vercolor"></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td bgcolor='green' class="vercolor"></td>
                        <td class="vernom">Carrer Verd1</td>                
                    </tr>

                    <tr>
                        <td class="vernom"><img  src="images/tren.png" alt=""  ></td>
                        <td class="vercolor">Estació</td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class="vercolor">Estacio</td>
                        <td class="vernom"><img  src="images/tren.png" alt=""  ></td>                
                    </tr>

                    <tr>
                        <td class="vernom">Carrer morat3</td>
                        <td bgcolor='#cc0066' class="vercolor"></td> 
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
                        <td class="vernom"><img  src="images/Vsort.png" alt=""  ></td>                
                    </tr>

                    <tr>
                        <td class="vernom">Carrer morat2</td>
                        <td bgcolor='#cc0066' class="vercolor"></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td bgcolor='blue' class="vercolor"></td>
                        <td class="vernom">Carrer blau1</td>                 
                    </tr>

                    <tr>
                        <td class="vernom"><img src="images/bombeta.png" alt=""  >60€</td>
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
                        <td class="vernom"><img src="images/impostos.png" alt=""  ></td>                
                    </tr>

                    <tr>
                        <td class="vernom">Carrer morat1</td>
                        <td bgcolor='#cc0066' class="vercolor"></td>
                        <td class='interiors'></td> 
                        <td class='interiors'></td>
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td> 
                        <td class='interiors'></td>  
                        <td bgcolor='blue' class="vercolor"></td>
                        <td class="vernom">Carrer blau2</td>                
                    </tr>

                    <tr>
                        <td colspan='2' rowspan="2">VISITANT LA PRESÓ</td>
                        <td bgcolor='#99ccff' class="horcolor"></td>
                        <td bgcolor='#99ccff'class="horcolor"></td>
                        <td class="horcolor">Sort</td>
                        <td bgcolor='#99ccff' class="horcolor"></td>
                        <td class="horcolor">Estació</td> 
                        <td class="horcolor">Impostos</td>
                        <td bgcolor='#660066' class="horcolor"></td>
                        <td class="horcolor">comunitat</td>
                        <td bgcolor='#660066' class="horcolor"></td>
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
