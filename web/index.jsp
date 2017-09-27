<%@ page import="java.util.Date,com.* , com.*" %><%--
  Created by IntelliJ IDEA.
  User: Aditya Shaha
  Date: 27/9/17
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Registration</title>
  </head>
  <body>
  <h1 class="text-center">LOGIN</h1>
  <div class="container">
  <%
    if(request.getParameter("login")!=null) {
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      LoginUser UserLogin = new LoginUser();

      boolean Auth = UserLogin.AuthorizeUser(username,password);

      if(Auth == true) {
          System.out.println("Yeah");
          Cookie UserCookie = new Cookie("uname",username);
          response.addCookie(UserCookie);
          response.setContentType("text/html");
          RequestDispatcher router = request.getRequestDispatcher("/Welcome.jsp");
          router.forward(request,response);
      } else {
        out.println("<div class=\"alert alert-danger\" role=\"alert\">Invalid Credentials</div>");
      }
    }
  %>
  <form action="" method="post">
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" name="username" class="form-control">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" name="password" class="form-control"><br/>
    </div>
    <div class="form-group">
      <input type="submit" value="Login" class="btn btn-primary" name="login">
      <input type="submit" value="Register" class="btn btn-success pull-right" name="register">
    </div>
  </form>
    <a href="Welcome.jsp">Goto Welcome</a>
  </div>
  </body>
</html>

<%
  if(request.getParameter("register")!=null) {
      RequestDispatcher router = request.getRequestDispatcher("/Register.jsp");
      router.forward(request,response);
  }
%>

