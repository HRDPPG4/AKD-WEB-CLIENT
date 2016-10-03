<%@ page 
    pageEncoding="utf-8"%>
    
<style>
	#mysavelist .main-savelist
	{
		background-color:white;
		width:100%;
		height:160px;
		color:black;
	}
	#mysavelist .main-savelist img,#mysavelist .savelist-data img
	{
		height:100%;
		padding:10px 0px;
	}
	#mysavelist .savelist-data
	{
		background-color:white;
		width:100%;
		height:120px;
		color:black;
		border-top: 1px solid #ccc;
	}
	#mysavelist ol.main-savelist-data{
		list-style:none;
		margin-left:0px;
		padding-left:0px;
	}
	#mysavelist .no-savelist{
		padding: 0px 15px;
	}
	#mysavelist .main-savelist button,#mysavelist .savelist-data button{
		margin-top: 5px;
	}
	    
	
	
</style>
    
<div id="mysavelist" class="tab-pane fade">
	<div class="content-mydoc">	        
	   <div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="pdf-edit" class="tab-pane fade in active">	   	
	   		 	<div class="main-savelist row">
	   		 		<div class="col-md-3">	   		 			
	   		 			<img src="${pageContext.request.contextPath}/resources/user/img/savelist.jpg" >
	   		 		</div>
	   		 		<div class="col-md-8">
	   		 			<h3>My Savelist</h3>
		   		 		<h4><span><i class="fa fa-globe" aria-hidden="true"></i></span> | Chivorn</h4>
		   		 		<p>12 docs</p>
		   		 		<p>This is description</p>
	   		 		</div>
	   		 		<div class="col-md-1">
	   		 			<button class="btn btn-primary"><i class="fa fa-plus-circle" aria-hidden="true"></i></button>	   		 			
	   		 			<button class="btn btn-warning"><i class="fa fa-pencil" aria-hidden="true"></i></button>
	   		 			<button class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
	   		 		</div>
	   		 	</div>
	   		 	<ol class="main-savelist-data">
	   		 		<li ng-repeat ="slide in getDocumentInSavelist">
	   		 			<div class="savelist-data row">	   		 		
			 				<div class="col-md-3">
			 					<span class="no-savelist">{{$index+1}}</span>
			 					<a href="/detail/{{slide.DOCUMENT[0].DOC_ID}}">
			 						<img src="{{slide.DOCUMENT[0].THUMBNAIL_URL}}" alt="Thumbnail">
			 					</a>
					 			
					 		</div>
					 		<div class="col-md-8">
					 			<h4>{{slide.DOCUMENT[0].TITLE}}</h4>
			 		 			<h4>{{slide.DOCUMENT[0].USERS[0].USER_NAME}}</h4>
			 		 			<p>{{slide.DOCUMENT[0].CREATED_DATE}}</p>
			 		 			<!-- <p>{{slide.DOCUMENT[0].DES}}</p> -->
					 		</div>
					 		<div class="col-md-1">
					 			<button class="btn btn-danger" ng-click="deleteSavelistDetail(slide.DOCUMENT[0].DOC_ID)"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
					 			<input type="hidden" value="{{slide.DOCUMENT[0].USER_ID}}" id ="userID">
								<input type="hidden" value="{{slide.LIST_ID}}" id ="listID">
					 		</div>	   		 		
			   		 	</div>
	   		 		</li>
	   		 	</ol>	   		 		
	   		</div>	
	   </div>
	</div>
</div>
    
    
    
<!-- <div id="mysavelist" class="tab-pane fade">
	<div class="content-mydoc">	        
	   <div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="pdf-edit" class="tab-pane fade in active">	   	
	   		 	<div class="list-group" ng-repeat ="slide in getDocumentInSavelist  ">
	    			<a href="/detail/{{slide.DOCUMENT[0].DOC_ID}}" class="list-group-item">
						<div class="media">
							<div class="checkbox pull-left" >
					    		<label>
									<input type="checkbox" ng-click="deleteSavelistDetail(slide.DOCUMENT[0].DOC_ID)">
									<input type="hidden" value="{{slide.DOCUMENT[0].USER_ID}}" id ="userID">
									<input type="hidden" value="{{slide.LIST_ID}}" id ="listID">				
								</label>
							</div>
							<div class="pull-left">
								<img class="media-object" src="{{slide.DOCUMENT[0].THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body" style="padding-top:20px;">
								<h4 class="media-heading">{{slide.DOCUMENT[0].TITLE}}</h4>
								<p>{{slide.DOCUMENT[0].DES}}</p>
								<p>{{slide.DOCUMENT[0].CREATED_DATE}}</p>
							</div>
						</div>									        
				    </a>
				</div>	   		 		
	   		</div>	
	   </div>
	</div>
</div> -->