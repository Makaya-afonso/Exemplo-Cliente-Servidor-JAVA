<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado da Média</title>
</head>
<body>
    <h1>Resultado da Média</h1>
    
    <%-- Recebendo os parâmetros do formulário --%>
    <% 
        // Criando um formatador de número para interpretar a entrada
        NumberFormat format = NumberFormat.getInstance(request.getLocale());
        
        // Convertendo os parâmetros para números
        double nota1 = format.parse(request.getParameter("nota1")).doubleValue();
        double nota2 = format.parse(request.getParameter("nota2")).doubleValue();
        
        // Calculando a média
        double media = (nota1 + nota2) / 2;
    %>
    
    <p>A média das notas <%= nota1 %> e <%= nota2 %> é: <%= media %></p>
</body>
</html>
