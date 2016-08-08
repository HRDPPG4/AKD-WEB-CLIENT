<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div id="commentBox">
	<form action="">
		<div id="img-user">
			<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
		</div>

		<div id="commentBoxArea">
			<textarea placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..."></textarea>
		</div>

		<div id="btnPost">
			<input type="button" value="Post" class="btn btn-primary">
		</div>

	</form>
</div>