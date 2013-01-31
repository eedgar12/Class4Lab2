<%-- 
    Document   : index
    Created on : Jan 31, 2013, 1:43:02 PM
    Author     : eedgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome!</h1>
        <hr>
        <!--RECTANGLE-->
        <form id="rectangle" name="rectangle" method="POST" action="RectangleServlet">
            <h4>Find the area of a rectangle</h4>
            Width: <input type="text" name="width"><br/>
            Length: <input type="text" name="length"><br/>
            <button type="submit" id="submitRectangle" name="submitRectangle">
                Submit</button>
        </form>
        <hr>
        <!--CIRCLE-->
        <form id="circle" name="circle" method="POST" action="CircleServlet">
            <h4>Find the area of a circle</h4>
            Radius: <input type="text" name="radius"><br/>
            <button type="submit" id="submitCircle" name="submitCircle">
                Submit</button>
        </form>
        <hr>
        <!--TRIANGLE-->
        <form id="triangle" name="triangle" method="POST" action="TriangleServlet">
            <h4>Find the 3rd side of a triangle</h4>
            Side 1: <input type="text" name="side1"><br/>
            Side 2: <input type="text" name="side2"><br/>
            <button type="submit" id="submitTriangle" name="submitTriangle">
                Submit</button>
        </form>
    </body>
</html>
