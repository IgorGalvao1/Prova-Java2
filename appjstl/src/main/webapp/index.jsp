<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    int[] resultado = new int[10];
    for(int i = 0;i < resultado.length;i++) {
        if(i < 2) {
            resultado[i] = 1;
            continue;
        }
        resultado[i] = resultado[i-1] + resultado[i-2];
    }
    request.setAttribute("valores", resultado);
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>
    <body>
        <h1>Teste</h1>
        <c:forEach var = "item" items="${valores}">
            ${item} <br />
        </c:forEach>
    </body>
</html>