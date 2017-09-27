<%@ page import="java.util.Date,com.*" %><%--
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



  <%
    java.util.Date today = new java.util.Date();
    String strToday = today.toString();
  %>
  <%
    LoginUser Auth = new LoginUser();
  %>

  <div class="container">

  <h1 class="text-center">LOGIN</h1>

    <%
      int ValidationResponseNo;
      String ValidationResponse;
      if(request.getParameter("submit")!=null){

        String username = request.getParameter("user");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String age = request.getParameter("age");

        RegisterUser User = new RegisterUser();

        ValidationResponseNo = User.ValidateUser(username,password,firstName,lastName,email,role,age);
        ValidationResponse = User.ValidationError(ValidationResponseNo);

        if(ValidationResponseNo == 0) {
            RequestDispatcher router = request.getRequestDispatcher("/Welcome.jsp");
            router.forward(request,response);
            out.println("<div class=\"alert alert-success\" role=\"alert\">Added Successfully</div>");
        } else {
          out.println("<div class=\"alert alert-danger\" role=\"alert\">"+ ValidationResponse +"</div>");
        }
      }
    %>
    <form action="" method="post">
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" class="form-control" name="user">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" name="password">
    </div>
    <div class="form-group">
      <label for="firstName">FirstName</label>
      <input type="text" class="form-control" name="firstName">
    </div>
    <div class="form-group">
      <label for="lastName">LastName</label>
      <input type="text" class="form-control" name="lastName">
    </div>
    <div class="form-group">
      <label for="age">Age</label>
      <input type="text" class="form-control" name="age">
    </div>
    <div class="form-group">
      <label for="role">Email</label>
      <input type="text" class="form-control" name="email">
    </div>
    <div class="form-group">
      <label for="role">Role</label>
      <input type="text" class="form-control" name="role">
    </div>
    <input type="submit" name="submit" value="CreateAccout" class="btn btn-primary">
  </form>
  </div>
  </body>
</html>

