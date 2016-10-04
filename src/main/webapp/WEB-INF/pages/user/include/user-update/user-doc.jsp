<%@ page pageEncoding="utf-8"%>



<div id="mydoc" class="tab-pane fade main-list">
	<div class="content-mydoc">
     	<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" ng-click="getDocumentByUser(2)" href="">PDF</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(1)" href="">PPT</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(3)" href="">DOC</a></li>
		</ul>
	   	<div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="user-doc" class="tab-pane fade in active">	
		   		 <ol class="main-list-data">
					<li ng-repeat ="slide in DocumentUser">
						<div class="list-data row">	   		 		
							<div class="col-md-3">
								<span class="no-savelist">{{$index+1}}</span>
								<a href="/detail/{{slide.DOC_ID}}">
									<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">
								</a>
								
							</div>
							<div class="col-md-7">
								<h4>{{slide.TITLE}}</h4>
								<!-- <h4>{{slide.DOCUMENT[0].USERS[0].USER_NAME}}</h4> -->
								<p>{{slide.CREATED_DATE}}</p>
							 	<p>{{slide.DES}}</p>
							</div>
							<div class="col-md-1">
								<p class="viewCount"><span><i class="fa fa-eye" aria-hidden="true"></i> : {{numFormat(9999999)}}</span></p>
								<p class="shareCount"><span><i class="fa fa-share-alt" aria-hidden="true"></i> : {{numFormat(9999999)}}</span></p>																
							</div>
							<div class="col-md-1">
								<button class="btn btn-danger" ng-click="checkDocID(slide.DOC_ID)" data-toggle="modal" data-target="#updateDocument"><i class="fa fa-pencil" aria-hidden="true"></i></button>
								<button class="btn btn-danger" ng-click="deleteDocument(slide.DOC_ID)"><i class="fa fa-trash-o" aria-hidden="true"></i></button>								
							</div>	   		 		
						</div>
					</li>
				</ol>
	   		    		 		
	   		 	<!-- <div class="list-group" ng-repeat ="slide in DocumentUser  ">
	    			<a href="/detail/{{slide.DOC_ID}}">
						<div class="media">
							<div class="pull-left">
								<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body" style="padding-top:20px;">
								<h4 class="media-heading">{{slide.TITLE}}</h4>
								<p>{{slide.DES}}</p>
								<p>{{slide.CREATED_DATE}}</p>
							</div>	
						</div>									        
				    </a>				    
				    <div id="updateAndDelete" style="padding-top:10px;">
						<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
						<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
					</div>
				</div> -->	   		 		
	   		 </div>
		</div>	   
	</div>
</div>


<!-- <div id="mydoc" class="tab-pane fade">
	<div class="content-mydoc">
     	<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" ng-click="getDocumentByUser(2)" href="">PDF</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(1)" href="">PPT</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(3)" href="">DOC</a></li>
		</ul>
	   	<div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="user-doc" class="tab-pane fade in active">	   		 		
	   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  ">
	    			<a href="/detail/{{slide.DOC_ID}}">
						<div class="media">
							<div class="pull-left">
								<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body" style="padding-top:20px;">
								<h4 class="media-heading">{{slide.TITLE}}</h4>
								<p>{{slide.DES}}</p>
								<p>{{slide.CREATED_DATE}}</p>
							</div>	
						</div>									        
				    </a>				    
				    <div id="updateAndDelete" style="padding-top:10px;">
						<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
						<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
					</div>
				</div>	   		 		
	   		 </div>
		</div>	   
	</div>
</div> -->