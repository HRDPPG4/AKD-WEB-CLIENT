<%@ page 
    pageEncoding="utf-8"%>
    
<div id="mydoc" class="tab-pane fade">
	<div class="content-mydoc">
     	<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" ng-click="getDocumentByUser(2)" href="#pdf-edit">PDF</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(1)" href="#ppt-edit">PPT</a></li>
		  <li><a data-toggle="tab" ng-click="getDocumentByUser(3)" href="#doc-edit">DOC</a></li>
		</ul>
	   	<div class="pdf-ppt-doc-edit tab-content">
	   		 <div id="pdf-edit" class="tab-pane fade in active">	   		 		
	   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  ">
	    			<a href="/detail/{{slide.DOC_ID}}" class="">
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
	   		 <!--edit pdf  -->
	   		 <div id="ppt-edit" class="tab-pane fade" >
	   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  | limitTo :20">	
	    			<a href="/detail/{{slide.DOC_ID}}" class="">	
						<div class="media">
							<div class="pull-left">
								<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body">
							    <h4 class="media-heading">{{slide.TITLE}}</h4>
								<p>{{slide.DES}}</p>
								<p>{{slide.CREATED_DATE}}</p>
							</div>	
						</div>									        
				    </a>				    
				    <div id="updateAndDelete">
						<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
						<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
					</div>				  
				</div>
	   		 </div>
	   		 <!--edit doc  -->
	   		 <div id="doc-edit" class="tab-pane fade">
	   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  | limitTo :20">
	    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
						<div class="media">				        	
							<div class="pull-left">
								<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
							</div>
							<div class="media-body"​>
								<h4 class="media-heading">{{slide.TITLE}}</h4>
								<p>{{slide.DES}}</p>
								<p>{{slide.CREATED_DATE}}</p>							
							</div>
						</div>									        
				    </a>				    
				    <div id="updateAndDelete">
						<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
						<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
					</div>				   	
			 	</div>
	   		 </div>
		</div>	   
	</div>
</div>