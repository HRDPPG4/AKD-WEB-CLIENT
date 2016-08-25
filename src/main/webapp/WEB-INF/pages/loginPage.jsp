<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css">	

	
	

</head>
<body class="container">
	<h1>Login</h1>
        <form action="/LoginSubmit" method="POST">
          <div class="form-group">           	
            <input type="text" name="username">
          </div>
          <div class="form-group">
            
            <input type="password" name="password">
          </div>
         <input type="submit" value="Login">
            <!-- <button type="submit" >Login</button> -->
        </form>
</body>
</html>