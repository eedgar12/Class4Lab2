<%-- 
    Document   : result
    Created on : Jan 31, 2013, 2:40:57 PM
    Author     : Emma Edgar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer Page</title>
    </head>
    <body>

        <%
            out.print(request.getAttribute("result"));
        %>
    </body>
</html>
