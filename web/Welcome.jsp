<%--
  Created by IntelliJ IDEA.
  User: aditya1
  Date: 27/9/17
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession session = request.getSession();
 %>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Welcome <% out.println(session.getAttribute("username")); %></h1>
    <form action="" method="post">
        <input type="submit" value="LOGOUT" class="alert alert-danger" name="logout">
    </form>

</div>

</body>
</html>
<%
    if(request.getParameter("logout")!=null) {


        session.invalidate();
        out.println("<div class=\"alert alert-danger\" role=\"alert\">Logged Out!</div>");
    }

%>