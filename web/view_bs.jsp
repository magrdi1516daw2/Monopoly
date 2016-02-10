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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
        <title>JSP Page</title>
        
    <style>
        body {
            // width: 100%;
            //height: 100%;
        }
        
        table.content {
            text-align: center;
        }
        

        header {
            text-align: center;
        }
        
        #tauler {
           // width: 800px;
           // height: 800px;
            font-family: serif;
            font-size: 10px;
            text-align: center;
            
        }
        
        td.vernom {
          // width: 15%;
          // height: 46px;
        }
        
        td.vercolor {
           //width: 5%;
        }
        
        td.hornom {
           // width: 15%;
          //  height: 60px;
        }
        
        td.horcolor {
            //width: 5%;
        }       
        
        td.interiors {
            border-color: transparent;
        }
</style>
    </head>
    
    <body> 
        <div class="container"> 
            <div  class="row">
                <header>
                <h2>pMonopoly!</h2>
                </header>
            </div> 
  
            <div class="row"> 
                <div class="col-md-2"> 
                    Columna lateral esquerra 
                </div>
            
                <div class="col-md-8"> 
                    <table  id='tauler' border='1' >
                        <tr>
                            <td colspan='2' rowspan="2">PARKING</td>
                            <td class="nom">Carrer vermell1</td>
                            <td>?</td>
                            <td>Carrer vermell2</td>
                            <td>Carrer vermell3</td>
                            <td>chuchu</td> 
                            <td>Carrer Groc1</td>
                            <td>Carrer Groc2</td>
                            <td>chop chop</td>
                            <td>Carrer Groc3</td>
                            <td colspan='2' rowspan="2">PRESÓ</td>
                        </tr>
                        <tr>
                            <td bgcolor='red' class="color"></td>
                            <td>Sort</td>
                            <td bgcolor='red'></td>
                            <td bgcolor='red'></td>
                            <td>Estació</td> 
                            <td bgcolor='yellow'></td>
                            <td bgcolor='yellow'></td>
                            <td>Aigua</td>
                            <td bgcolor='yellow'></td>
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
                            <td class="vernom">foto chest</td>
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
                            <td class="vernom">foto chest</td> 
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
                            <td class="vernom">foto tren</td>
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
                            <td class="vernom">foto tren</td>                
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
                            <td class="vernom">?</td>                
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
                            <td class="vernom">foto bombeta</td>
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
                            <td class="vernom">foto impostos</td>                
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
                            <td bgcolor='#99ccff'></td>
                            <td bgcolor='#99ccff'></td>
                            <td>Sort</td>
                            <td bgcolor='#99ccff'></td>
                            <td>Estació</td> 
                            <td>Impostos</td>
                            <td bgcolor='#660066'></td>
                            <td>comunitat</td>
                            <td bgcolor='#660066'></td>
                            <td colspan='2' rowspan="2">SORTIDA</td>
                        </tr>
                        <tr>
                            <td>Carrer cian3</td>
                            <td>Carrer cian2</td>
                            <td>?</td>
                            <td>Carrer cian1</td>
                            <td>foto tren</td> 
                            <td>foto impostos</td>
                            <td>Carrer lila2</td>
                            <td>foto chest</td>
                            <td>Carrer lila2</td>
                        </tr>
                    </table> <!-- tancament de la taula que fomra el tauler-->
            
                </div> <!-- tancament col del tauler bootstrap-->
        
                <div class="col-md-2"> 
                    Columna lateral dret
                </div>
            </div>
         
        <div  class="row">
                <footer>
                peu de pàgina
                </footer>
        </div> 
   </div> <!-- tancament contents bootstrap -->
   </body> 
</html>
