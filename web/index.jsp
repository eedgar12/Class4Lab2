<%-- 
    Document   : index
    Created on : Jan 31, 2013, 1:43:02 PM
    Author     : Emma Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the shape calculator</title>
        <script type="text/javascript">
            function isNumber(n) {
                return !isNaN(parseFloat(n)) && isFinite(n);
            }
            
            function valRectangle(){
                var w = document.forms["rectangle"]["width"].value;
                var l = document.forms["rectangle"]["length"].value;
                
                if ((l == null || l == "") || (w == null || w == "")){
                    alert("You must enter numbers for width and length");
                    return false;
                } else {
                    if (isNumber(w) && isNumber(l)){
                    return true;
                    }else{
                        alert("You must enter numbers");
                        return false;
                    }
                }
            }
            
            function valCircle(){
                var r = document.forms["circle"]["radius"].value;
                
                if (r == null || r == ""){
                    alert("You must enter a number for radius");
                    return false;
                } else {
                    if (isNumber(r)){
                    return true;
                    } else{
                        alert("You must enter numbers");
                        return false;
                    }
                }
            }
            
            function valTriangle(){                
                var s1 = document.forms["triangle"]["side1"].value;
                var s2 = document.forms["triangle"]["side2"].value;
                
                if ((s1 == null || s1 == "") || (s2 == null || s2 == "")){
                    alert("You must enter numbers for side 1 and side 2");
                    return false;
                } else {
                    if (isNumber(s1) && isNumber(s2)){
                    return true;
                    } else{
                        alert("You must enter numbers");
                        return false;
                    }
                }
            }
        </script>
    </head>
    <body>
        <h1>Welcome!</h1>
        <hr>
        <!--RECTANGLE-->
        <form id="rectangle" name="rectangle" method="POST" action="RectangleServlet"
              onsubmit="return valRectangle()">
            <h4>Find the area of a rectangle</h4>
            Width: <input type="text" name="width"><br/>
            Length: <input type="text" name="length"><br/>
            <button type="submit" id="submitRectangle" name="submitRectangle">
                Submit</button>
        </form>
        <hr>
        <!--CIRCLE-->
        <form id="circle" name="circle" method="POST" action="CircleServlet"
              onsubmit="return valCircle()">
            <h4>Find the area of a circle</h4>
            Radius: <input type="text" name="radius"><br/>
            <button type="submit" id="submitCircle" name="submitCircle">
                Submit</button>
        </form>
        <hr>
        <!--TRIANGLE-->
        <form id="triangle" name="triangle" method="POST" action="TriangleServlet"
              onsubmit="return valTriangle()">
            <h4>Find the hypotenuse of a triangle</h4>
            Side 1: <input type="text" name="side1"><br/>
            Side 2: <input type="text" name="side2"><br/>
            <button type="submit" id="submitTriangle" name="submitTriangle">
                Submit</button>
        </form>

    </body>
</html>
