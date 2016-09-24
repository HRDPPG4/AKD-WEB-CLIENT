<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>    
<sec:authorize access="isAuthenticated()">
	<sec:authentication  property="principal.userID" var="userID"/>
	<sec:authentication  property="principal.name" var="userName"/>
	<sec:authentication  property="principal.email" var="userEmail"/> 
	<sec:authentication  property="principal.profile" var="userProfile"/>
</sec:authorize>
    
    
<div id="commentBox"> 
	<h3>បញ្ចេញមតិរបស់អ្នកចំពោះអត្ថបទនេះ</h3>
	<form action="">
		<div id="img-user">
			 <img alt="" src="${userProfile}">
		</div>

		<div id="commentBoxArea">
			 <textarea myEnter="insertComment()" placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..." ng-model="newComment"></textarea> 
			<!-- <input type="text" myEnter="insertComment()" placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..." ng-model="newComment"> -->
		</div>

		<div id="btnPost">
			<input type="button" value="ដាក់ប្រកាស" class="btn btn-primary" ng-click="insertComment()" ng-disabled="!newComment">
		</div>
		
		<div ng-if="commentByDoc" id="listCommentBox" ng-repeat="comment in commentByDoc">	
			<div id="img-user-commented">
				<img alt="" src="http://localhost:1111/resources/img/user-profile/{{comment.USERS[0].PROFILE}}">
				{{comment.USERS[0].USER_NAME}}
			</div>
			
			<div id="comment-list">
				 {{comment.REMARK}}
			</div>
		</div>

	</form>
</div> 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<!-- My Old code use with my user  -->
<!-- <div id="commentBox"> 
	<h3>បញ្ចេញមតិរបស់អ្នកចំពោះអត្ថបទនេះ</h3>
	<form action="">
		<div id="img-user">
			 <img alt="" src="http://localhost:1111/resources/img/user-profile/{{getUserByID.PROFILE}}">
		</div>

		<div id="commentBoxArea">
			 <textarea myEnter="insertComment()" placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..." ng-model="newComment"></textarea> 
			<input type="text" myEnter="insertComment()" placeholder = "សូមបញ្ចេញមតិរបស់អ្នក..." ng-model="newComment">
		</div>

		<div id="btnPost">
			<input type="button" value="ដាក់ប្រកាស" class="btn btn-primary" ng-click="insertComment()" ng-disabled="!newComment">
		</div>
		
		<div ng-if="commentByDoc" id="listCommentBox" ng-repeat="comment in commentByDoc">	
			<div id="img-user-commented">
				<img alt="" src="http://localhost:1111/resources/img/user-profile/{{comment.USERS[0].PROFILE}}">
				{{comment.USERS[0].USER_NAME}}
			</div>
			
			<div id="comment-list">
				 {{comment.REMARK}}
			</div>
		</div>

	</form>
</div> -->