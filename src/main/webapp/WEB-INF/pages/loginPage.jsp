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

	
	<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 60%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #003666;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    position:relative;
    left:120px;
    cursor: pointer;
    width: 30%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

</head>
<body class="container">
	<!-- <h1>Login</h1>
        <form action="/login" method="POST" id="frmLogin">
          <div class="form-group">           	
            <input type="text" name="username">
          </div>
          <div class="form-group">
            
            <input type="password" name="password">
          </div>
         <input type="submit" value="Login">
            <button type="submit" >Login</button>
        </form> -->
        <h2 style="text-align: center">Login Form</h2>

<form action="/login" method="POST" id="frmLogin">
  
  
  <div style="width:100%;">
  
  <center>
  	<table style="width:100%;">  
  		<tr>
  			<td style="text-align: center"><label><b>Email:</b></label></td>
  			<td><input  type="text" placeholder="Enter Email" name="username" required></td>
  		</tr>
  		<tr>
  			<td style="text-align: center"><label><b>Password</b></label></td>
  			<td><input  type="password" placeholder="Enter Password" name="password" required></td>
  		</tr>
  		<tr>
  	 <td style="position:relative;left:180px;"><button type="submit">Login</button></td>
  	 </tr>
  	</table>
  </center>	
  	</div>
    <!-- <div><label><b>Email:</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
	</div>
	<div>
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    </div>
       <button type="submit">Login</button>
      
   
   
  </div> -->

  <div style="background-color:#f1f1f1">
   
    
  </div>
</form>
        
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
        
        $(function() {
        	
        	$("#frmLogin").submit(function(e){
       		
       		  e.preventDefault();
       			
       		  $.ajax({
  	            url: "${pageContext.request.contextPath}/login",
  	            type: "POST",
  	            data: $("#frmLogin").serialize(),
//   	            beforeSend: function (xhr) {
//   	                xhr.setRequestHeader("X-Ajax-call", "true");
//   	            },
  	            success: function(data) {
  	            	if(data == "User account is locked"){
  	            		alert(data);
  	            	}else if(data == "User is disabled"){
  	            		alert(data);
  	            	}else if(data == "Bad credentials"){
  	            		alert(data);
  	            	}else{
  	            		alert("Logined success.");
  	            		location.href = "${pageContext.request.contextPath}/"+data;
  	            	}
  	            	
  	            },
  	         	error: function(data){
  	         		console.log(data);
  				}
  	        });
       			
       		});
	      
        	
        
        });
        </script>
        
</body>
</html>