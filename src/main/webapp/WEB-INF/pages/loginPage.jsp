<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Sweet Alert -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    
    <!-- AngularJS -->
    
     <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"></script>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css">	

	
	<style>
body
{
	font-family:Khmer OS Battambang;
}
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
        <h2 style="text-align: center">ចូលប្រើគណនីរបស់អ្នក</h2>

<form action="/login" method="POST" id="frmLogin">
  
  
  <div style="width:100%;">
  
  <center>
  	<table style="width:100%;">  
  		<tr>
  			<td style="text-align: center"><label><b>អ៊ីម៉ែល:</b></label></td>
  			<td><input  type="text" placeholder="សូមបញ្ចូល អ៊ីម៉ែល" name="username" required></td>
  		</tr>
  		<tr>
  			<td style="text-align: center"><label><b>ពាក្យសំងាត់</b></label></td>
  			<td><input  type="password" placeholder="សូមបញ្ចូលពាក្យសំងាត់" name="password" required></td>
  		</tr>
  		<tr>
  	 <td style="position:relative;left:180px;"><button type="submit">ចូលប្រើ</button></td>
  	 </tr>
  	</table>
  </center>	
  	</div>
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
  	            		
  	            		/* swal({  
	  	      				title: "អបអរសាទរ!",   
	  	      				text: "dd",   
	  	      				timer: 2000,   
	  	      				showConfirmButton: false
	  	      			}); */
  	            		
  	            		swal({  
	  	      				title: "អបអរសាទរ!",   
	  	      				text: "",   
	  	      				timer: 600,   
	  	      				showConfirmButton: false
	  	      			},function(){
	  	      				location.href = "${pageContext.request.contextPath}/"+data;
	  	      			});
  	            		
  	            		
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