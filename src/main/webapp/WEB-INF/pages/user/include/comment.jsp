<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div id="commentBox"> <!-- data-ng-init="getAllCommentByDocID(doc.DOC_ID)" --> <!-- Call When load page is better but not use this -->
	<h3>បញ្ចេញមតិរបស់អ្នកចំពោះអត្ថបទនេះ</h3>
	<form action="">
		<div id="img-user">
			<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
			Hum Chivorn
		</div>

		<div id="commentBoxArea">
			<textarea placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..." ng-model="newComment"></textarea> 
		</div>

		<div id="btnPost">
			<input type="button" value="Post" class="btn btn-primary" ng-click="insertComment()">
		</div>
		
		
		<div id="listCommentBox" ng-repeat="commentByDocID in getAllCommentByDocID">	
			<div id="img-user-commented">
				<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
				Kim Bunhong
			</div>
			
			<div id="comment-list">
				 {{commentByDocID.REMARK}}
			</div>
		
		
			
		</div>

	</form>
</div>