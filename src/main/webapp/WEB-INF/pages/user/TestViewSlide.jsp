<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
		#slideView
		{
			margin: 0px auto;
			float: left;
		}
		#slideView iframe
		{
			width:600px;
			height:500px;
			
			
			
		}
		#slide
		{
			display: none;
		}
		#btn
		{
			clear:both;
		}
		.cui-ctl , .cui-toolbar-button-right 
		{
			display: none;
			visibility: hidden;
		}

		.cui-statusbar, .UISmallFont, .UITextTranformUpperCase, .cui-toolbar-toolbar ,.cui-toolbar-onerow, .UITextTranformUpperCase 
		{
			display: none;
			visibility: hidden;
		}

	</style>
	<script>
		var screenWidth=window.innerWidth;
		var screenHeight=window.innerHeight;
		function full()
		{
			var btnVal=document.getElementById("mybtn").value;
			if(btnVal=="Full Screen")
			{
				document.getElementById("pptx").width=screenWidth-40;
				document.getElementById("pptx").height=screenHeight-70;
				document.getElementById("mybtn").value="Normal";
			}
			else
			{
				document.getElementById("pptx").width=500;
				document.getElementById("pptx").height=500;
				document.getElementById("mybtn").value="Full Screen";
			}
			
		}
	</script>

</head>
<body>
	<iframe src='https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777' id="pptx"</iframe>
</body>
</html>