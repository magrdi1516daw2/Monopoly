<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<script lang="JavaScript" type="text/javascript" src="js/scripts.js"></script>
<title>Bienvenido al Monopoli</title>
</head>
<body>
    <%@ page errorPage="/error/errorPage.jsp"%>
	<form action="ProcessamentLogin" method="post">
	Nombre de jugadors:
            <select onchange="this.form.submit()" name="nJugadors">
                <option disabled selected>Selecciona un Nombre</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            
		
	</form>
        
    <c:if test="${nJugadors>=2}">
        <form action="ProcessamentLogin" method="post"> 
            <c:forEach begin="1" end="${nJugadors}" var="jugador">
                Nom:
                <input type="text" name="nJ${jugador}"></br>
                Color:
                <input type="color" name="col${jugador}"></br></br>
            </c:forEach>
            <input type="submit" value="Jugar" name="jugar">    
        </form>
    </c:if>
        
</body>
</html>
