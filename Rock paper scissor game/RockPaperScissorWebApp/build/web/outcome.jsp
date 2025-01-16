<%-- 
    Document   : outcome
    Created on : Jan 11, 2025, 11:07:05 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rock Paper Scissor Outcome Page</title>
    </head>
    <style>
        html{
            background-image: url('download2.jpg'); 
            background-repeat: repeat;
        } 
    </style>
    <body>
        <h1>Rock Paper Scissor outcome</h1>
        
        <%
            String playerName = pageContext.getServletContext().getInitParameter("player_name");
            String computerName = pageContext.getServletContext().getInitParameter("computer_name");
            Character userChoice = (Character)request.getAttribute("userChoice");
            Character computerChoice = (Character)request.getAttribute("computerChoice");
            String outcome = (String)request.getAttribute("outcome");
        %>
        <p>
            Below is the game outcome:
        </p>
        <table>
            <tr>
                <td><b><%=playerName  %></b></td>
                <td>
                    <%if(userChoice=='S'){ %>
                        
                        <img src="Scissor2.jpg" alt="Scissor" style="width: 5px, 5px, 5px, 5px">
                   <% } 
                    else if(userChoice=='P'){%>
 
                        <img src="Paper2.jpg" alt="Paper" style="width: 5px, 5px, 5px, 5px">
                    <%} 
                    else if(userChoice=='R'){ %>
                        
                        <img src="Rock2.jpg" alt="Rock" style="width: 5px, 5px, 5px, 5px">
                    <%}%>
                </td>
            </tr>
            
            <tr>
                <td><b><%=computerName  %></b></td>
                <td>
                    <%if(computerChoice=='S'){ %>
                        
                        <img src="Scissor2.jpg" alt="Scissor" style="width: 5px, 5px, 5px, 5px">
                   <% } 
                    else if(computerChoice=='P'){%>
 
                        <img src="Paper2.jpg" alt="Paper" style="width: 5px, 5px, 5px, 5px">
                    <%} 
                    else if(computerChoice=='R'){ %>
                        
                        <img src="Rock2.jpg" alt="Rock" style="width: 5px, 5px, 5px, 5px">
                    <%}%>
                </td>
            </tr>
        </table>
            <p>
                <b>Outcome: <%=outcome%></b>
            </p>
        
            <p>
                Please click <a href="index.html">here</a> to go back to the main page or 
                <a href="start.jsp">here</a> to continue playing.
            </p>
    </body>
</html>
